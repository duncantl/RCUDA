# \notefnerr means "Note that this function may also return error codes from previous, asynchronous launches."



trim =
function(x)
  gsub("(^[[:space:]]+|[[:space:]]+$)", "", x)

changeMarkup =
function(desc)
{
   desc = gsub("\\\\deprecated", "deprecated", desc)

   if(any(grepl("\\\\code", desc))) {
      desc = gsub("\\\\code", "\\\\verb{", desc)
      desc = gsub("\\\\endcode", "}", desc)      
   }

   desc = gsub("\\\\p \\*([^ ]+) ", "\\\\code{\\1}", desc, fixed = TRUE)   
   desc = gsub("\\\\p ([^ ]+) ", "\\\\code{\\1}", desc, fixed = TRUE)
   
   desc = gsub("<b>", "", desc, fixed = TRUE)
   desc = gsub("</b>", "", desc, fixed = TRUE)   

    # e.g. "See \ref CUDA_UNIFIED for additional details."
   desc = gsub('\\\\ref ::([^(]+)\\(.*\\)(")?', "\\\\code{\\\\link{\\1}}", desc)
    #??? put a \\link around \\1?.  What is this matching ? An example?
   desc = gsub("\\\\[a-z]+ ([*()\\w]+)([ ,.]|$)", "\\\\code{\\1}\\2", desc, perl = TRUE)
    # e.g. ::cuCtxCreate
   desc = gsub("::([A-Za-z_]+)", "\\\\code{\\\\link{\\1}}", desc, perl = TRUE)
   desc
}

makeSig =
function(name, fun)
{
  id = deparse(substitute(name))
  if(inherits(name, "AsIs") || is.character(name))
      id = name

  args = formals(fun)
  hasDefault = !sapply(args, function(x) is.name(x) && as.character(x) == "")
  sprintf("%s(%s)", id, paste(names(args), c("", " = ")[ as.integer(hasDefault) ], sapply(args, as.character), collapse = ", ", sep = ""))
}

returnTypeDoc =
function(fun, name = getName(fun))
{
    if(returnString(fun))
        return("a character vector of length 1")

    if(length( rv <- returnsValueViaArg(fun, name)) > 0) {
        if(length(rv) > 1) {
            v = fun@params[names(rv)]
            tys = sapply(v, getType)
            els = mapply(describeReturnElement, tys, names(v), MoreArgs = list(inList = TRUE))
            ans = sprintf("a list with %d elements\n %s", length(v), paste(els, collapse = "\n"))
        } else {
            p = fun@params[[1]]   
            ans = describeReturnElement(getType(p))
        }
        return(ans)
    }

    if(fun@returnType$kind == CXType_Void)
        "NULL"
    else
       "an enumerated value of type cudaError indicating success or some reason for a different outcome"
}

isEnumType =
function(ty)
{
   k = getTypeKind(ty)
   if(k == CXType_Typedef)
       k = getCanonicalType(ty)$kind
       
   k == CXType_Enum
}

describeReturnElement =
function(type, var = character(), inList = length(var) > 0)
{
 pty = getPointeeType(type)
 tyName = getName(pty)
 k = getTypeKind(pty)

 # Handle arrays.

 if(isEnumType(pty))
     ans = sprintf("an enumerated value of type %s", tyName)
 else {
   rtype = switch(names(k),
        LongLong = ,
        Long=,
        Double=,
        Float=,
        Int128=,
        ULong =,
        UInt = "numeric",
        Short=,
        Int = "integer",
        Bool = "logical",
        Void = "raw"
        )


 
    if(is.null(rtype)) {
       ans = sprintf("an object of class %s", tyName)
    } else
       ans = sprintf("a %s scalar", rtype)
  }
    
 if(inList)
      sprintf("\\item{%s}{%s}", var, ans)
 else
     ans
}


makeFunctionDoc =
function(fun, name = gsub("_v2", "", getName(fun@def)), txt = getRawCommentText(fun@def))
{
   if(txt == "") 
     txt = readCommentFromFile(fun@def)


   lines = strsplit(txt, "\\n")[[1]]
   parts = getGroups(lines)

   
   br = grep("\\\\brief", lines, value = TRUE)
   title = gsub(".*\\\\brief ", "", br)

   i = which(lines == " *")
   id = seq(i[1] + 1L, i[2] - 1L)
   desc = gsub("^ +\\*", "", lines[id])
   desc = changeMarkup(desc)

      # remove references to the out variables. They will be confusing.
      # Also should fix text about devices going from 0 to num - 1
   desc = gsub("in \\\\code\\{\\*[a-zA-Z]+}", "", desc)
   
   
   lines = lines[-id]

   i = grep(" \\* \\\\param",  lines)
   params = gsub(".*\\\\param ", "", lines[i])
#   params = sapply(strsplit(params, "-"), function(x) sprintf("\\item{%s}{%s}", trim(x[1]), paste(trim(x[-1]), collapse ="")))
   p = strsplit(params, "-")
   params = sapply(p, function(x)  changeMarkup(paste(trim(x[-1]), collapse =""))      )
   names(params) = trim(sapply(p, function(x) x[1]))

  
   lines = lines[-i]

# Get any \note text.
   

   lines = gsub("^ +\\*", "", lines)
   sa = grep("\\\\sa", lines)
   if(length(sa))  {
      i = seq(sa, length(lines))
      tmp = unlist(strsplit(changeMarkup(lines[i]), " +"))
      tmp = setdiff(tmp, c("/", "\\sa"))
      tmp = gsub("(::|,)", "", tmp)
      seeAlso = unique(trim(tmp))
   } else seeAlso = NA

   funName = name
   if(exists(funName)) {
      rfun = get(funName)
      returnValue = setdiff(names(params), names(formals(rfun)))
      usage = makeSig(I(funName), rfun)   #??? will makeSignature in RCodeGen do for this??
      params = params[names(formals(rfun))]  # watch if there are . that we add for extra parameters
   } else {
     returnValue = NA
     usage = NA
   }


   
  ans = list(name = name,
        alias = name,
        title = title,
        description = desc,
        usage = usage,        
        arguments = params,
        value = returnValue, 
        seealso = seeAlso[seeAlso != ""]
        )

   addExtraParts(parts, ans)
}

addExtraParts =
function(parts, ans)
{
   if("notefnerr" %in% names(parts)) {
      parts[["note"]] = c(parts[["note"]], note = "Note that this function may also return error codes from previous, asynchronous launches.")
      parts = parts[ !(names(parts) %in% "notefnerr") ]
   }
   
   parts = parts[ !(names(parts) %in% c("brief", "param", "return", "sa")) ]
   extra = setdiff(names(parts), names(ans))
   if(length(extra)) 
      ans[extra] = lapply(parts[extra], cleanPart)

   ans
}

cleanPart =
function(part)
{
   part = unlist(part)
   gsub("^[[:space:]]?\\\\[a-zA-Z]+ ", "", part)
}

getGroups =
function(lines)
{

   lines = lines[ - grep("(^/\\*|\\*/$)", lines) ]
   lines = gsub("^[[:space:]]+\\*", "", lines)
   g = grepl("^ \\\\", lines) & !grepl("^ \\\\p ", lines)
   parts = split(lines, cumsum(g))
   ids = gsub("^ \\\\([a-zA-Z]+)( .*|$)", "\\1", lines[g])
   names(parts) = ids
   p = split(parts, names(parts))
   p
}

OtherFields = list(references = "\\url{http://docs.nvidia.com/cuda/cuda-driver-api/index.html}",
                   keyword = "programming",
                   concept = "GPU"
                   )


writeRd =
function(doc, otherFields = OtherFields, out = sprintf("../man/%s.Rd", doc$name), force = FALSE)
{
  if(is.null(doc))
    return("")
  
  doc = c(doc, otherFields)
  ans = sapply(names(doc),
         function(id) {
              el = doc[[id]]
              if(length(el) == 0 || is.na(el))
                return("")
              if(id == "alias" && length(el) > 1)
                return(paste(sprintf("\\alias{%s}", el), collapse = "\n"))
              
              val = if(id == "arguments") {
                      if(is.list(el)) {
                        argNames = unlist(lapply(el, names))
                        vals = unlist(el, recursive = FALSE)
                        el = tapply(vals, argNames, unique)
                      }
                      
                      c("", sprintf("  \\item{%s}{%s}", names(el), el), "")
                    } else if(id == "seealso") {
                      el = gsub("\\\\code\\{(.*)}", "\\1", el)

                      sapply(el, function(el) {
                                    if(exists(el)) {
                                      sprintf("\\code{\\link{%s}}", el)
                                    } else 
                                      sprintf("\\code{%s}", el)
                                  })
                    } else {
                      if(is.list(el))
                        unlist(el)
                      else
                        el
                    }


              sprintf("\\%s{%s}", id, paste(val, collapse = "\n"))
         })

  if(!is.na(out) && (inherits(out, "connection") || (!file.exists(out) || force))) {
    cat(sprintf("%% Autogenerated %s", Sys.Date()), ans, sep = "\n", file = out)
    out
  } else {
    ans
  }
}


readCommentFromFile =
function(def)
{
  txt = readLines(getFileName(def))
  lineNum = getInstantiationLocation(def)[[2]][1]
  txt = txt[1:(lineNum - 1)]
  start = max(grep("/**", txt, fixed = TRUE))
  txt = txt[start:length(txt)]
  paste(txt, collapse = "\n")
}


combineDocs =
function(..., docs = list(...), title = character())
{
  fields = names(docs[[1]])

  ans = lapply(fields,
                   function(f) {
                     sapply(docs, `[[`, f)
                   })
  names(ans) = fields
  if(length(title)) {
     ans$description = mapply(c, sapply(docs, `[[`, "name"), sapply(docs, `[[`, "title"), sapply(docs, `[[`, "description"), rep("", length(docs)))
     ans$title = title
  }

  ans$name = ans$name[1]

  structure(ans, class = "MultiDocument")
}

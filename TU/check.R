#
# Here we see if we have duplicated code when we generated it.
#

ff = list.files("../R", pattern = ".*\\.R$")
txt = lapply(ff, readLines)
names(txt) = ff

e = lapply(txt, function(x) parse(text = x))

is.literal =
function(x)
{
    is.character(x) || is.numeric(x) || is.integer(x) || is.logical(x)
}

info =
function(ex) {

    if(class(ex) %in% c("=", "<-")) {
        if(is.call(ex[[3]]))
            v = as.character(ex[[3]][[1]])
        else if(is.name(ex[[3]]))
            v = "name"
        else  if(is.literal(ex[[3]]))
            v = "literal" # as.character(ex[[3]])
        structure(v,  names = ex[[2]])
    } else if(is.call(ex)) {
        if(ex[[1]] == "setClass")
            structure( "setClass", names = ex[[2]] )
    } else {
        ex
    }
}
    

ii = i = lapply(e, function(x) sapply(x, info))
ids = unlist(sapply(i, names))
i = unlist(i)
names(i) = ids

s = split(i, names(i))
dups = names(s[sapply(s, length) > 1])

sapply(dups, function(var) names(ii)[ sapply(ii, function(x) var %in% names(x)) ])


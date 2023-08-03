from beet import Context


def beet_default(ctx: Context):
    funcs = ctx.data.functions
    for path in funcs.match("*"):
        if not len(funcs[path].lines):
            funcs.pop(path)

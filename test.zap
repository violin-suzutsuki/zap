opt server_output = "server_output.luau"
opt client_output = "client_output.luau"

type Character = Instance (Player)?

event AnotherEvent = {
    from: Client,
    type: Reliable,
    call: SingleAsync,
    data: struct {
        float: Character,
        any: unknown,
    },
}

funct Test = {
    call: Async,
    args: struct {
        foo: u8,
        bar: string
    },
    rets: enum { Success, Fail }
}
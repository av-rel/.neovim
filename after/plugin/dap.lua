local ok, dap = pcall(require, "dap")

if not ok then
    return
end

dap.configurations.cpp = {
    setupCommands = {  
        { 
            text = '-enable-pretty-printing',
            description =  'enable pretty printing',
            ignoreFailures = false 
        },
    },
}

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

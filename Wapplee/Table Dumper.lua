local function Dump(tab,printfunc)
    local etc = ""
    local function DUMP(tab,DONTUSE)
        DONTUSE= DONTUSE or 0
        for i,v in pairs(tab) do
            local ret = v
            if type(v) == "table" then ret = "(table) Arguments: "..#v else ret = v.." ("..typeof(v)..")" end
            etc = etc..tostring(string.rep("   ",DONTUSE)..tostring(i).." = "..tostring(ret).."\n")
            if type(v) == "table" then
                DUMP(v,DONTUSE+1)
            end
        end
    end
    DUMP(tab)
    if printfunc then printfunc(etc)end
    return etc
end

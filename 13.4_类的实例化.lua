--[[
Author: 15868707168@163.com 15868707168@163.com
Date: 2023-03-15 10:00:32
LastEditors: 15868707168@163.com 15868707168@163.com
LastEditTime: 2023-03-15 10:01:48
FilePath: \LuaLesson\13.4_类的实例化.lua
Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
--]]
--[[
userInfo = {
    id = 1,
    name = "yejiancong",
    age = 99
}

userInfo.__index = userInfo

function userInfo:sayHello()
    print("hello")
end

function userInfo:setAge(age)
    self.age = age
end

function userInfo:new(obj)
    local obj = obj or {}
    setmetatable(obj, self)
    return obj
end

u3 = userInfo:new({ id = 10 })

u4 = userInfo:new()

print(userInfo, u3)
print(u3.id, u3.name)
u3.name = "xiaobai"
u3:setAge(100)

print(userInfo.id, userInfo.name, userInfo.age)
print(u3.id, u3.name, u3.age)
print(u4.id, u4.name, u4.age)
--u3:sayHello()


]]

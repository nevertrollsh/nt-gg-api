ft = {
 name = "Fancy Toasts",
 version = "1.0",
 functions = "3"
}

function ft.percent(a,b)
if b == nil then
a = 1
b = 100
end
for i = a,b do
gg.toast(i.. "%")
gg.sleep(50)
end
end
ft.percentage, ft.percentageToast, ft.percentToast = ft.percent

function ft.design1(toast)
 gg.toast("»".. toast .."«")
end
ft.toast1,ft.pointer = ft.design1

function ft.design2(toast)
 local tpp = "\n["
 for i = 1,#toast do
 tpp = tpp.. "="
 end
 tpp = tpp.. "]"
 gg.toast(tpp.. "\n[ " ..toast.. " ]" ..tpp)
end
ft.toast2, ft.equals = ft.design2

function ft.design3(toast)
 local tpp = "\n["
 for i = 1,#toast do
 tpp = tpp.. "–"
 end
 tpp = tpp.. "]"
 gg.toast(tpp.. "\n" ..toast.. "" ..tpp)
end
ft.toast3, ft.minus = ft.design3

function ft.design4(toast)
 local tpp = "\n\\"
 for i = 1,#toast do
 tpp = tpp.. "··"
 end
 tpp = tpp.. "/"
 gg.toast(tpp.. "\n" ..toast.. "" ..tpp)
end
ft.toast4, ft.dot = ft.design4

function ft.design5(toast)
 local tpp = "\n|"
 local mdivisor = #toast / 2
 for i = 1,mdivisor do
 tpp = tpp.. "★"
 end
 tpp = tpp.. "|"
 gg.toast(tpp.. "\n" ..toast.. "" ..tpp)
end
ft.toast5, ft.star = ft.design5

function ft.makeToast(toast, line, minuses)
 local tpp = "\n" ..line
 for i = 1,#toast do
 tpp = tpp.. "" ..minuses
 end
 tpp = tpp.. "" ..line
 gg.toast(tpp.. "\n" ..toast.. "" ..tpp)
end
ft.make, ft.create, ft.custom, ft.customToast = ft.makeToast

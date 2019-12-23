from subprocess import call

def toCsv(x):
   return ",".join(map(str, x))

x = [1, 2, 3, 4]
y = [5, 6, 7, 8]

script = """data <- data.frame(X = c({x}), Y = c({y}))
print(data)
"""
script = script.format(x=toCsv(x), y=toCsv(y))

with open("script.R", "w") as f:
    f.write(script)

call(["Rscript", "script.R"])
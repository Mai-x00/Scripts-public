$obj = new-object -com wscript.shell
while ($true) {
    $obj.SendKeys([char]175)
}

# Somehow this code breaks/overflows system input -> you cannot type any key, or click anything
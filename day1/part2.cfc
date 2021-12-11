component {

    function run(){

        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10))
            .map((e,i,a) => {
                return i > 3 and a.slice(i-2,3).sum() > a.slice(i-3,3).sum() ? 1 : 0
            })
            .sum()

        print.line(inputs)

    }

}
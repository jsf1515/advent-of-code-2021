component {

    function run(){

        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10))
            .map((element,index,array) => {
                return index > 1 and element > array[index-1] ? 1 : 0
            })
            .sum()

        print.line(inputs)
    }

}
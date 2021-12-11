component {

    function run(){
        var aim = 0;
        var depth = 0;
        var position = 0;

        fileRead("./inputs.txt")
            .listToArray(chr(10))
            .map((element) => {
                return {
                    "type" : listGetAt(element,1," "),
                    "number" : listGetAt(element,2," ")
                }
            })
            .each((element) => {
                switch(element.type){
                    case "forward":
                        position = position + element.number;
                        depth = depth + ( element.number * aim );
                        break;
                    case "up":
                        aim = aim - element.number;
                        break;
                    case "down":
                        aim = aim + element.number;
                        break;
                }
            });

        print.line(depth * position)
    }

}
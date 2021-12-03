component {

    function part1(){
        var depth = 0;
        var position = 0;

        fileRead("./inputs.txt")
            .listToArray(chr(10))
            .each((element,index) => {
                var reading = element.listToArray(" ");
                switch(reading[1]){
                    case "forward":
                        position = position + reading[2];
                        break;
                    case "up":
                        depth = depth - reading[2];
                        break;
                    case "down":
                        depth = depth + reading[2];
                        break;
                }
            });

        print.line("depth :: " & depth);
        print.line("position :: " & position);
        print.line("multiplier :: " & depth * position);
    }

    function part2(){
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
            .each((element,index) => {
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
        
        print.line("aim :: " & aim);
        print.line("depth :: " & depth);
        print.line("position :: " & position);
        print.line("multiplier :: " & depth * position);
    }

}
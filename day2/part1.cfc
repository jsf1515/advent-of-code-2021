component {

    function run(){
        var depth = 0;
        var position = 0;

        fileRead("./inputs.txt")
            .listToArray(chr(10))
            .each((element) => {
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

        print.line(depth * position);

    }

}
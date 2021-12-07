
component {

    function run(){

        var inputs = fileRead("./inputs.txt")
            .listToArray()
            .map((element) => {
                return int(element);
            });

        for(day = 1; day <= 80; day++){

            todayBirths = 0;

            inputs = inputs.map((fishAge) => {
                if(fishAge == 0){
                    todayBirths = todayBirths + 1;
                    return 6;
                } else {
                    return fishAge - 1;
                }
            });

            for( x = 0; x < todayBirths; x++){
                inputs.append(8);
            }

        }

        print.line(inputs.len());

    }

}
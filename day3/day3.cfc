component {

    function part1(){

        var inputs = fileRead("./inputs.txt")
            .listToArray(chr(10));


        var gammaArray = [];
        for(i = 1; i <= inputs[1].len(); i++){
            gammaArray[i] = 0
        }

        inputs.each((element) => {
            for(i = 1; i <= element.len(); i++){
                if(element[i] == true){
                    gammaArray[i] = gammaArray[i] + 1;
                }
            }
        });

        var gammaString = "";
        var epsilonString = "";

        gammaArray.each((element) => {
            if(element > 500){
                gammaString = gammaString & "1";
                epsilonString = epsilonString & "0";
            } else {
                gammaString = gammaString & "0";
                epsilonString = epsilonString & "1";
            }
        });

        var gammaDecimal = inputBaseN(gammaString,2);
        var epsilonDecimal = inputBaseN(epsilonString,2);

        print.line("gamma binary = " & gammaString);
        print.line("gamma decimal = " & gammaDecimal);
        print.line("");
        print.line("epsilon binary = " & epsilonString);
        print.line("epsilon decimal = " & epsilonDecimal);
        print.line("");
        print.line("power level = " & epsilonDecimal * gammaDecimal);
    }

    function part2(){
        
    }

}
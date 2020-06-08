program Exercicio10;
var
    nome, sexo, estado, nomeMenorPeso, sexoMenorPeso, regiao:string;
    grauInstrucao, idade, somaIdadeMasc, somaIdadeFem, contMasc, contFem, contSul, contFemOutEstMenor21, contTotal, contAbaixoPeso:integer;
    peso, altura, mediaMasc, mediaFem, menorPeso, imc, porcAbaixoPeso:real;
begin
    somaIdadeMasc := 0; somaIdadeFem := 0; contMasc := 0; contFem := 0; contSul := 0; contFemOutEstMenor21 := 0; 
    mediaMasc := 0; mediaFem := 0; menorPeso := 500; contTotal := 0; contAbaixoPeso := 0; porcAbaixoPeso := 0;
    
    writeln('***Idade -1 para encerrar o programa***');
    write('Informe a idade do(a) entrevistado(a): ');readln(idade);
    while idade <> -1 do
    begin    
        write('Informe o nome: ');readln(nome);
        write('Informe o sexo (M - Masculino, F - Feminino): ');readln(sexo);
        write('Informe o grau de instrução (0 - Analfabeto, 1 - Fundamental, 2 - Médio, 3 - Superior): ');readln(grauInstrucao);
        write('Informe a sigla do estado de origem (Exemplo: SC): ');readln(estado);
        write('Informe o peso (Exemplo: 60.0): ');readln(peso);
        write('Informe a altura em centímetros(Exemplo: 180): ');readln(altura);
        if (sexo = 'm')
            then begin
                contMasc := contMasc + 1;
                somaIdadeMasc := somaIdadeMasc + idade;
                end
                else begin
                contFem := contFem + 1;
                somaIdadeFem := somaIdadeFem + idade;
                end;
        if (peso<menorPeso)
            then begin
                menorPeso := peso;
                nomeMenorPeso := nome;
                sexoMenorPeso := sexo;
            end;
        imc := peso / (altura * altura);
        if (imc < 18.5)
            then contAbaixoPeso := contAbaixoPeso + 1;
        if (estado = 'sc') or (estado = 'pr') or (estado = 'rs')
            then begin
                regiao := 'sul';
                contSul := contSul + 1;
            end; 
        if (regiao <> 'sul') and (idade < 21) and (sexo = 'f')
            then contFemOutEstMenor21 := contFemOutEstMenor21 +1;
        contTotal := contTotal + 1;
        writeln('***Idade -1 para encerrar o programa***');
        write('Digite idade: ');
        readln(idade);  
    end;
    if contMasc <> 0
        then mediaMasc := somaIdadeMasc / contMasc;
    if contFem <> 0
        then mediaFem := somaIdadeFem / contFem;
    if contAbaixoPeso <> 0
        then porcAbaixoPeso := (contAbaixoPeso/contTotal) * 100;
    writeln('A média de idade dos homens entrevistados é de: ', mediaMasc:0:2, ' e das mulheres entrevistadas é de: ', mediaFem:0:2, '.');
    writeln('A pessoa entrevistada com menor peso é: ',nomeMenorPeso, ' seu peso é de: ',menorPeso:0:2,'kgs e é do sexo: ', sexoMenorPeso, '.');
    writeln('A porcentagem de pessoas entrevitadas abaixo do peso é de: ',porcAbaixoPeso:0:2,'%.');
    writeln('O numero total de entrevistados da região sul é de: ',contSul,'.');
    writeln('O numero de mulheres entrevitadas fora da região sul e menores de 21 anos é de: ',contFemOutEstMenor21,'.');
End.


program Exercicio11;

var
    periodo, localAbast: string;
    consumo, tarifa, valorBruto, valorDesc, valorLiquido, valorIVA, valorTotal: real;

begin
    
    write('Informe os kWh abastecidos: ');readln(consumo);
    write('Informe o período em que foi abastecido (D - Diurno, N - Noturno): ');readln(periodo);
    write('Informe o local em que foi abastecido (C - Casa, R - Rede Publica, P - Posto): ');readln(localAbast);
    
    if (periodo = 'd')
        then begin
            tarifa := 0.75;
            valorBruto := tarifa * consumo;
            end
        else begin
            tarifa := 0.91;
            valorBruto := tarifa * consumo;
            end;
    If (localAbast = 'c')
        then valorDesc := valorBruto * 0.2
            else if (localAbast = 'r')
                then valorDesc := valorBruto * 0.16
                else valorDesc := 0;
    valorLiquido := valorBruto - valorDesc;
    valorIVA := valorLiquido * 0.23;
    valorTotal := valorLiquido + valorIVA;
    
    writeln('O consumo de ', consumo:0:2,'kWh, dá um total de R$', valorBruto:0:2, '.');
    writeln('O seu desconto é de R$', valorDesc:0:2, '.');
    writeln('Com valor liquido de R$', valorLiquido:0:2,'.');
    writeln('O acréscimo do IVA ficou no valor de R$', valorIVA:0:2,'.');
    write('E o valor total a ser pago, fica em R$', valorTotal:0:2,'.')
    
end.


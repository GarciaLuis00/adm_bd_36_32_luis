CREATE DATABASE fundamentus;

USE fundamentus;

CREATE TABLE acoes (
	id INT AUTO_INCREMENT,
    papel CHAR(6),
    cotacao DECIMAL(10,2),
    pl DECIMAL(10,2),
    pvp DECIMAL(10,2),
    psr DECIMAL(10,3),
    dividend_yield DECIMAL(10,5),
    p_ativo DECIMAL(10,3),
    p_capital_giro DECIMAL(10,2),
    p_ebit DECIMAL(10,2),
    p_ativo_circular_liquido DECIMAL(10, 2),
    ev_ebit DECIMAL(10,2),
    ev_ebitda DECIMAL(10,2),
    margem_ebit DECIMAL(10,5),
    margem_liquida DECIMAL(10,5),
    liquidez_corrente DECIMAL(10,2),
    roic DECIMAL(10, 5),
    roe DECIMAL(10, 5),
    liquidez_2meses DECIMAL(12, 2),
    patrimonio_liquido DECIMAL(15, 2),
    divida_bruto_patrimonio DECIMAL(10, 2),
    crescimento_receita DECIMAL(10, 5),
    PRIMARY KEY(id)
);

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/acoes.csv'
INTO TABLE acoes
FIELDS TERMINATED BY ';'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(Papel,cotacao,PL,PVP,PSR,dividend_yield,
p_Ativo,p_capital_giro,p_ebit,p_ativo_circular_liquido,
ev_ebit,ev_ebitda,margem_ebit,margem_liquida,
liquidez_corrente,ROIC,ROE,liquidez_2meses,
patrimonio_liquido,divida_bruto_patrimonio,
crescimento_receita) SET id = NULL;

select * from acoes order by papel;

select * from acoes where pl < 25;


select * from acoes where pl < 25 order by pl desc;


select papel,pl from acoes where pl < 25 order by pl desc;

select * from acoes where pvp <= 5;

select papel,cotacao,pl,pvp from acoes where pvp <=5;

select * from acoes where dividend_yield >= 0.12;


select papel,cotacao,pl,pvp,dividend_yield from acoes where dividend_yield >= 0.12;

select * from acoes where patrimonio_liquido > 100000000000;

select papel,cotacao,pl,pvp,dividend_yield from acoes where patrimonio_liquido >= 100000000000;

select * from acoes where pvp <=5;

select * from acoes where pvp <=5 and pvp >=0;

select papel,cotacao from acoes where patrimonio_liquido > 1000000000 and dividend_yield > 0.12 and pvp <=5 and pvp >=0 and pl < 25;

select * from acoes where patrimonio_liquido order by patrimonio_liquido desc;





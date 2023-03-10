select WeapNome, WeapUsage from armas order by WeapUsage desc;

select MapNome, MapPick from mapa order by MapPick desc;

select Nome, K from jogadores order by K desc;

select j.Nome, count(p.MVP) from jogos p inner join jogadores j on j.JogadorId = p.MVP group by j.Nome order by count(p.MVP) desc;

select Pais, count(Pais) from jogadores group by Pais order by count(Pais) desc;

select j.PlacarTime1, j.PlacarTime2  from jogos j left join equipes e on j.Time1 =  e.EquipeId where j.JogoId > 73 order by j.JogoId;

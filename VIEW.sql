#CRIAR UMA VIEW
Create view vw_lista_funcionarios AS
select nome,especialidade
from Fun;

#UTILIZANDO A VIEW CRIADA
select*FROM vw_lista_funcionarios;




#CRIANDO UMA VIEW PARA DEPENDENTES
create view vw_lista_dependentes AS
select nome
from dependente;

#UTILIZANDO A VIEW CRIADA
select*FROM vw_lista_dependentes;



#CRIANDO UMA VIEW PARA FUNCIONARIOS QUE TEM DEPENDENTES
create view vw_lista_Fun_com_dependentes AS
select fun.nome as fun_nome,
				   dependente.nome
from fun
inner join dependente
on fun.cod_fun = dependente.cod_fun;

#UTILIZANDO A VIEW CRIADA
select*FROM vw_lista_Fun_com_dependentes ;



#CRIAR VIEW
create view View_Funcionario_Dependentes_Inner as
select fun.nome as funcionario, dependente.nome as dependente
from Fun 
inner join Dependente 
on fun.cod_fun=dependente.cod_fun
where  fun.cod_fun = 1;

#UTILIZANDO VIEW
select * from View_Funcionario_Dependentes_Inner;


#CRIAR VIEW
create view View_Funcionario_Sem_Dependentes as
select fun.nome,dependente.nome as funcionario, dependente.nome as dependente
from Fun 
left join dependente 
on fun.cod_fun=dependente.cod_fun
where dependente.nome is null ;

#UTILIZANDO VIEW
SELECT * FROM View_Funcionario_Sem_Dependentes;






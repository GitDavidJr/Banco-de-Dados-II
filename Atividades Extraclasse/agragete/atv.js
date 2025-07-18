// QUESTÃO 1
// Funcionários do departamento 2 com salário entre R$2000 e R$3000

db.funcionario.aggregate([
  {
    $match: {
      salario: { $gt: 2000, $lt: 3000 },
      depto: 2,
    },
  },
  {
    $project: {
      nome: 1,
      depto: 1,
      salario: 1,
      _id: 0,
    },
  },
]);

// QUESTÃO 2
// Funcionários admitidos no primeiro semestre a partir de 2008

db.funcionario.aggregate([
  {
    $addFields: {
      ano: { $year: "$admissao" },
      mes: { $month: "$admissao" },
    },
  },
  {
    $match: {
      ano: { $gte: 2008 },
      mes: { $lte: 6 },
    },
  },
  {
    $project: {
      nome: 1,
      admissao: 1,
      _id: 0,
    },
  },
  { $sort: { admissao: -1 } },
]);

// QUESTÃO 3
// Funcionários com função de PROGRAMADOR ou ANALISTA

db.funcionario.aggregate([
  {
    $match: {
      funcao: { $in: ["PROGRAMADOR", "ANALISTA"] },
    },
  },
  {
    $group: {
      _id: "$funcao",
      funcionarios: { $addToSet: "$nome" },
    },
  },
]);

// QUESTÃO 4
// Funcionários agrupados por cidade

db.funcionario.aggregate([
  {
    $group: {
      _id: "$endereco.cidade",
      funcionarios: { $push: "$nome" },
    },
  },
]);

// QUESTÃO 5
// Quantidade total de funções (com repetição) por departamento

db.funcionario.aggregate([
  {
    $group: {
      _id: "$depto",
      todasFuncoes: { $push: "$funcao" },
    },
  },
  {
    $project: {
      total: { $size: "$todasFuncoes" },
    },
  },
]);

// QUESTÃO 6
// Quantidade de funções únicas por departamento

db.funcionario.aggregate([
  {
    $group: {
      _id: "$depto",
      funcoesUnicas: { $addToSet: "$funcao" },
    },
  },
  {
    $project: {
      total: { $size: "$funcoesUnicas" },
    },
  },
]);

// QUESTÃO 7
// Top 5 funcionários com maior número de feedbacks

db.funcionario.aggregate([
  {
    $match: { feedbacks: { $exists: true } },
  },
  {
    $project: {
      nome: 1,
      totalFeedbacks: { $size: "$feedbacks" },
    },
  },
  {
    $sort: { totalFeedbacks: -1 },
  },
  { $limit: 5 },
]);

// QUESTÃO 8
// Data de admissão do supervisor mais antigo e mais recente

db.funcionario.aggregate([
  {
    $match: { funcao: "SUPERVISOR" },
  },
  {
    $group: {
      _id: null,
      maisAntigo: { $min: "$admissao" },
      maisRecente: { $max: "$admissao" },
    },
  },
  {
    $project: {
      _id: 0,
      maisAntigo: 1,
      maisRecente: 1,
    },
  },
]);

// QUESTÃO 9
// Média de filhos por função

db.funcionario.aggregate([
  {
    $match: { filhos: { $exists: true } },
  },
  {
    $group: {
      _id: "$funcao",
      mediaFilhos: { $avg: "$filhos" },
    },
  },
]);

// QUESTÃO 10
// Total de salários entre R$2000 e R$3000 agrupados por função

db.funcionario.aggregate([
  {
    $match: {
      salario: { $gte: 2000, $lte: 3000 },
    },
  },
  {
    $group: {
      _id: "$funcao",
      totalSalarios: { $sum: "$salario" },
    },
  },
]);

// QUESTÃO 11
// Funções cujo total de salários está entre R$2000 e R$3000

db.funcionario.aggregate([
  {
    $group: {
      _id: "$funcao",
      somaSalarios: { $sum: "$salario" },
    },
  },
  {
    $match: {
      somaSalarios: { $gte: 2000, $lte: 3000 },
    },
  },
]);

// QUESTÃO 12
// Top 3 hobbies mais frequentes entre os funcionários

db.funcionario.aggregate([
  { $unwind: "$hobbies" },
  {
    $group: {
      _id: "$hobbies",
      ocorrencias: { $sum: 1 },
    },
  },
  { $sort: { ocorrencias: -1 } },
  { $limit: 3 },
]);

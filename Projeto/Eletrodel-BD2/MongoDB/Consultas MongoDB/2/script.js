db.orcamento.aggregate([
  {
    $match: {
      $expr: {
        $eq: [ { $year: "$servico.data_conclusao" }, 2024 ]
      }
    }
  },
  {
    $group: {
      _id: { $month: "$data" },
      totalServicos: { $sum: 1 }
    }
  },
  {
    $group: {
      _id: null,
      meses: {
        $push: {
          mes: "$_id",
          total: "$totalServicos"
        }
      },
      maxTotal: { $max: "$totalServicos" }
    }
  },
  {
    $project: {
      _id: 0,
      mesesMaisServicos: {
        $filter: {
          input: "$meses",
          as: "m",
          cond: { $eq: ["$$m.total", "$maxTotal"] }
        }
      }
    }
  }
])
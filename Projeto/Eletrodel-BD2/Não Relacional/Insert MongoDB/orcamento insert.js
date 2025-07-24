db.orcamento.drop();

db.orcamento.insertMany([
  {
    _id: 1,

    valor: 600.0,

    prazo: "6 dias",

    data: ISODate("2024-06-20T00:00:00Z"),

    descricao_problema: "Problema com a c�mera",

    cpf_cliente: "67890123456",

    aparelho: {
      tipo: "Celular",

      modelo: "Redmi Note 10",

      marca: "Xiaomi",
    },

    servico: {
      data_inicio: ISODate("2024-06-20T00:00:00Z"),

      data_conclusao: ISODate("2024-06-25T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-27T00:00:00Z"),

      status: "Entregue",

      descricao_solucao: "Substitui��o da c�mera",

      cpf_funcionario: "65432109876",

      tipo_servico: "Substitui��o de c�mera",

      itens_pecas: [
        {
          id_peca: 1,

          qtd: 1,

          valor: 350.0,
        },
      ],
    },
  },

  {
    _id: 2,

    valor: 700.0,

    prazo: "8 dias",

    data: ISODate("2024-06-18T00:00:00Z"),

    descricao_problema: "Tela n�o liga",

    cpf_cliente: "78901234567",

    aparelho: {
      tipo: "Notebook",

      modelo: "ZenBook 14",

      marca: "Asus",
    },

    servico: {
      data_inicio: ISODate("2024-06-18T00:00:00Z"),

      data_conclusao: ISODate("2024-06-23T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-25T00:00:00Z"),

      status: "Pago",

      descricao_solucao: "Reparo da tela",

      cpf_funcionario: "76543210987",

      tipo_servico: "Substitui��o de tela",

      itens_pecas: [
        {
          id_peca: 2,

          qtd: 1,

          valor: 400.0,
        },
      ],
    },
  },

  {
    _id: 3,

    valor: 850.0,

    prazo: "9 dias",

    data: ISODate("2024-06-16T00:00:00Z"),

    descricao_problema: "Problema com o touchpad",

    cpf_cliente: "89012345678",

    aparelho: {
      tipo: "Notebook",

      modelo: "Pavilion 15",

      marca: "HP",
    },

    servico: {
      data_inicio: ISODate("2024-06-16T00:00:00Z"),

      data_conclusao: ISODate("2024-06-21T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-23T00:00:00Z"),

      status: "Entregue",

      descricao_solucao: "Reparo do touchpad",

      cpf_funcionario: "65432109876",

      tipo_servico: "Troca de bateria",

      itens_pecas: [
        {
          id_peca: 3,

          qtd: 1,

          valor: 200.0,
        },
      ],
    },
  },

  {
    _id: 4,

    valor: 950.0,

    prazo: "10 dias",

    data: ISODate("2024-06-14T00:00:00Z"),

    descricao_problema: "Problema com o sistema operacional",

    cpf_cliente: "90123456789",

    aparelho: {
      tipo: "Notebook",

      modelo: "ThinkPad X1",

      marca: "Lenovo",
    },

    servico: {
      data_inicio: ISODate("2024-06-14T00:00:00Z"),

      data_conclusao: ISODate("2024-06-19T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-21T00:00:00Z"),

      status: "Cancelado",

      descricao_solucao: "Reinstala��o do sistema operacional",

      cpf_funcionario: "09876543210",

      tipo_servico: "Reparo de teclado",

      itens_pecas: [
        {
          id_peca: 4,

          qtd: 1,

          valor: 450.0,
        },
      ],
    },
  },

  {
    _id: 5,

    valor: 1100.0,

    prazo: "12 dias",

    data: ISODate("2024-06-12T00:00:00Z"),

    descricao_problema: "Problema com a bateria",

    cpf_cliente: "01234567890",

    aparelho: {
      tipo: "Notebook",

      modelo: "Swift 3",

      marca: "Acer",
    },

    servico: {
      data_inicio: ISODate("2024-06-12T00:00:00Z"),

      data_conclusao: ISODate("2024-06-17T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-19T00:00:00Z"),

      status: "Pago",

      descricao_solucao: "Troca da bateria",

      cpf_funcionario: "76543210987",

      tipo_servico: "Reparo de som",

      itens_pecas: [
        {
          id_peca: 5,

          qtd: 1,

          valor: 500.0,
        },
      ],
    },
  },

  {
    _id: 6,

    valor: 1300.0,

    prazo: "14 dias",

    data: ISODate("2024-06-10T00:00:00Z"),

    descricao_problema: "Problema com a tela",

    cpf_cliente: "12345098765",

    aparelho: {
      tipo: "Notebook",

      modelo: "Surface Laptop 4",

      marca: "Microsoft",
    },

    servico: {
      data_inicio: ISODate("2024-06-10T00:00:00Z"),

      data_conclusao: ISODate("2024-06-15T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-17T00:00:00Z"),

      status: "Entregue",

      descricao_solucao: "Substitui��o da tela",

      cpf_funcionario: "65432109876",

      tipo_servico: "Reparo de Wi-Fi",

      itens_pecas: [
        {
          id_peca: 6,

          qtd: 1,

          valor: 600.0,
        },
      ],
    },
  },

  {
    _id: 7,

    valor: 1400.0,

    prazo: "15 dias",

    data: ISODate("2024-06-08T00:00:00Z"),

    descricao_problema: "Problema com o som",

    cpf_cliente: "23456109876",

    aparelho: {
      tipo: "Celular",

      modelo: "Mate 40 Pro",

      marca: "Huawei",
    },

    servico: {
      data_inicio: ISODate("2024-06-08T00:00:00Z"),

      data_conclusao: ISODate("2024-06-13T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-15T00:00:00Z"),

      status: "Pago",

      descricao_solucao: "Reparo do som",

      cpf_funcionario: "76543210987",

      tipo_servico: "Reinstala��o do sistema operacional",

      itens_pecas: [
        {
          id_peca: 7,

          qtd: 1,

          valor: 700.0,
        },
      ],
    },
  },

  {
    _id: 8,

    valor: 1500.0,

    prazo: "16 dias",

    data: ISODate("2024-06-06T00:00:00Z"),

    descricao_problema: "Problema com o Wi-Fi",

    cpf_cliente: "34567210987",

    aparelho: {
      tipo: "Celular",

      modelo: "Moto G100",

      marca: "Motorola",
    },

    servico: {
      data_inicio: ISODate("2024-06-06T00:00:00Z"),

      data_conclusao: ISODate("2024-06-11T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-13T00:00:00Z"),

      status: "Entregue",

      descricao_solucao: "Reparo do Wi-Fi",

      cpf_funcionario: "87654321098",

      tipo_servico: "Troca de carregador",

      itens_pecas: [
        {
          id_peca: 8,

          qtd: 1,

          valor: 800.0,
        },
      ],
    },
  },

  {
    _id: 9,

    valor: 1600.0,

    prazo: "17 dias",

    data: ISODate("2024-06-04T00:00:00Z"),

    descricao_problema: "Problema com o carregador",

    cpf_cliente: "45678321098",

    aparelho: {
      tipo: "Celular",

      modelo: "Nokia 8.3",

      marca: "Nokia",
    },

    servico: {
      data_inicio: ISODate("2024-06-04T00:00:00Z"),

      data_conclusao: ISODate("2024-06-09T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-11T00:00:00Z"),

      status: "Cancelado",

      descricao_solucao: "Troca do carregador",

      cpf_funcionario: "98765432109",

      tipo_servico: "Limpeza interna",

      itens_pecas: [
        {
          id_peca: 9,

          qtd: 1,

          valor: 900.0,
        },
      ],
    },
  },

  {
    _id: 10,

    valor: 1700.0,

    prazo: "18 dias",

    data: ISODate("2024-06-02T00:00:00Z"),

    descricao_problema: "Problema com o teclado",

    cpf_cliente: "56789432109",

    aparelho: {
      tipo: "Notebook",

      modelo: "Satellite Pro",

      marca: "Toshiba",
    },

    servico: {
      data_inicio: ISODate("2024-06-02T00:00:00Z"),

      data_conclusao: ISODate("2024-06-07T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-09T00:00:00Z"),

      status: "Pago",

      descricao_solucao: "Reparo do teclado",

      cpf_funcionario: "09876543210",

      tipo_servico: "Atualiza��o de firmware",

      itens_pecas: [
        {
          id_peca: 10,

          qtd: 1,

          valor: 1000.0,
        },
      ],
    },
  },

  {
    _id: 11,

    valor: 1800.0,

    prazo: "19 dias",

    data: ISODate("2024-06-01T00:00:00Z"),

    descricao_problema: "Problema com a tela",

    cpf_cliente: "67890543210",

    aparelho: {
      tipo: "Televisao",

      modelo: "VIERA TX-55",

      marca: "Panasonic",
    },

    servico: {
      data_inicio: ISODate("2024-06-01T00:00:00Z"),

      data_conclusao: ISODate("2024-06-06T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-08T00:00:00Z"),

      status: "Entregue",

      descricao_solucao: "Substitui��o da tela",

      cpf_funcionario: "10987654321",

      tipo_servico: "Reparo de placa-m�e",

      itens_pecas: [
        {
          id_peca: 11,

          qtd: 1,

          valor: 1100.0,
        },
      ],
    },
  },

  {
    _id: 12,

    valor: 1900.0,

    prazo: "20 dias",

    data: ISODate("2024-06-30T00:00:00Z"),

    descricao_problema: "Problema com o som",

    cpf_cliente: "78901654321",

    aparelho: {
      tipo: "Televisao",

      modelo: "Smart TV 4K",

      marca: "Philips",
    },

    servico: {
      data_inicio: ISODate("2024-06-30T00:00:00Z"),

      data_conclusao: ISODate("2024-06-04T00:00:00Z"),

      data_conclusao_prevista: ISODate("2024-06-06T00:00:00Z"),

      status: "Pago",

      descricao_solucao: "Reparo do som",

      cpf_funcionario: "21098765432",

      tipo_servico: "Substitui��o de alto-falante",

      itens_pecas: [
        {
          id_peca: 12,

          qtd: 1,

          valor: 1200.0,
        },
      ],
    },
  },
]);

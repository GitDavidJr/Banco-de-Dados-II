db.cliente.drop()

db.cliente.insertMany([
  {
    _id: "01234567890",
    Nome: "Camila Dias",
    endereco: {
      cidade: "Manaus",
      bairro: "Adrianópolis",
      logradouro: "Rua Rio Jutaí",
      complemento: "Casa 2",
      numero: 606,
      cep: "69000-000",
    },
    telefone_cliente: ["61999998888"],
  },

  {
    _id: "12345098765",
    Nome: "Gustavo Henrique",
    endereco: {
      cidade: "Goiânia",
      bairro: "Setor Bueno",
      logradouro: "Rua T-53",
      complemento: null,
      numero: 707,
      cep: "74210-000",
    },
    telefone_cliente: ["71988887777"],
  },

  {
    _id: "23456109876",
    Nome: "Isabela Freitas",
    endereco: {
      cidade: "Belém",
      bairro: "Nazaré",
      logradouro: "Travessa Quintino Bocaiúva",
      complemento: "Apto 303",
      numero: 808,
      cep: "66000-000",
    },
    telefone_cliente: ["81977776666"],
  },

  {
    _id: "34567210987",
    Nome: "Marcelo Vieira",
    endereco: {
      cidade: "Florianópolis",
      bairro: "Centro",
      logradouro: "Rua Felipe Schmidt",
      complemento: null,
      numero: 909,
      cep: "88000-000",
    },
    telefone_cliente: ["91966665555"],
  },

  {
    _id: "45678321098",
    Nome: "Natália Correia",
    endereco: {
      cidade: "Vitória",
      bairro: "Praia do Canto",
      logradouro: "Avenida Dante Michelini",
      complemento: "Casa 3",
      numero: 1010,
      cep: "29000-000",
    },
    telefone_cliente: ["61955554444"],
  },

  {
    _id: "56789432109",
    Nome: "Otávio Gomes",
    endereco: {
      cidade: "Natal",
      bairro: "Ponta Negra",
      logradouro: "Avenida Engenheiro Roberto Freire",
      complemento: null,
      numero: 1111,
      cep: "59000-000",
    },
    telefone_cliente: ["71944443333"],
  },

  {
    _id: "67890123456",
    Nome: "Fernanda Costa",
    endereco: {
      cidade: "Brasília",
      bairro: "Asa Sul",
      logradouro: "Quadra 102",
      complemento: "Bloco C",
      numero: 102,
      cep: "70200-000",
    },
    telefone_cliente: ["81933332222"],
  },

  {
    _id: "67890543210",
    Nome: "Priscila Lopes",
    endereco: {
      cidade: "Campo Grande",
      bairro: "Jardim dos Estados",
      logradouro: "Rua Antônio Maria Coelho",
      complemento: "Apto 404",
      numero: 1212,
      cep: "79000-000",
    },
    telefone_cliente: ["91922221111"],
  },

  {
    _id: "78901234567",
    Nome: "Ricardo Alves",
    endereco: {
      cidade: "Salvador",
      bairro: "Barra",
      logradouro: "Avenida Oceânica",
      complemento: null,
      numero: 303,
      cep: "40100-000",
    },
    telefone_cliente: ["61911110000"],
  },

  {
    _id: "78901654321",
    Nome: "Rafael Martins",
    endereco: {
      cidade: "Cuiabá",
      bairro: "Jardim América",
      logradouro: "Rua das Acácias",
      complemento: null,
      numero: 1313,
      cep: "78000-000",
    },
    telefone_cliente: ["71900009999"],
  },

  {
    _id: "89012345678",
    Nome: "Patrícia Rocha",
    endereco: {
      cidade: "Fortaleza",
      bairro: "Meireles",
      logradouro: "Rua Santos Dumont",
      complemento: "Apto 202",
      numero: 404,
      cep: "60100-000",
    },
    telefone_cliente: ["81999998888"],
  },

  {
    _id: "90123456789",
    Nome: "Bruno Carvalho",
    endereco: {
      cidade: "Recife",
      bairro: "Boa Viagem",
      logradouro: "Avenida Boa Viagem",
      complemento: null,
      numero: 505,
      cep: "51000-000",
    },
    telefone_cliente: ["91988887777"],
  },
]);

//show collections

//db.cliente.drop()

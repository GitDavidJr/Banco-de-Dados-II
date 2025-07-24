// Acessa o banco de dados. Se não existir, ele será criado.
use AgendaAuditorioMongoDB;

// Limpa as coleções existentes (opcional, para testes)
db.administradores.drop();
db.servidores.drop();
db.equipamentos.drop();
db.reservas.drop();

// ======================================
// Coleção: administradores
// Corresponde à tabela Administrador
// ======================================
db.administradores.insertMany([
  { _id: NumberInt(1), nome: "Pablo Freire Matos", login: "pablo", senha: "matos" },
  { _id: NumberInt(2), nome: "Liojes de Oliveira Carneiro", login: "Liojes", senha: "Carneiro" }
]);

// ======================================
// Coleção: servidores
// Corresponde às tabelas Servidor e ServidorTelefone (incorporado)
// ======================================
db.servidores.insertMany([
  { _id: NumberInt(1), nome: "Marcília Porto Rocha", email: "murilo@gmail.com", telefones: ["77999984511", "77988112622"] },
  { _id: NumberInt(2), nome: "Gutemberg Júnior", email: "gutemberg@hotmail.com", telefones: ["77998552233", "77991657844", "77988554355"] },
  { _id: NumberInt(3), nome: "Paulo Zainer de Oliveira Barbosa", email: "paulo@gmail.com", telefones: ["77988445566"] },
  { _id: NumberInt(4), nome: "José Roberto Azevedo", email: "zeazevedo@gmail.com", telefones: [] }, // Sem telefone no exemplo
  { _id: NumberInt(5), nome: "Carlos Matheus Rodrigues", email: "carmatro@gmail.com", telefones: [] } // Sem telefone no exemplo
]);

// ======================================
// Coleção: equipamentos
// Corresponde à tabela Equipamento
// O codAdm é uma referência (ObjectId ou o próprio NumberInt)
// ======================================
db.equipamentos.insertMany([
  { _id: NumberInt(1), tombo: NumberInt(1), nome: "Data Show", status: "disponível", dataHoraAtualizacaoStatus: ISODate(), codAdm: NumberInt(1) },
  { _id: NumberInt(2), tombo: NumberInt(2), nome: "Lousa Digital", status: "disponível", dataHoraAtualizacaoStatus: ISODate(), codAdm: NumberInt(1) },
  { _id: NumberInt(3), tombo: NumberInt(3), nome: "Microfone", status: "disponível", dataHoraAtualizacaoStatus: ISODate(), codAdm: NumberInt(1) },
  { _id: NumberInt(4), tombo: NumberInt(4), nome: "Caixa de Som", status: "não disponível", dataHoraAtualizacaoStatus: ISODate(), codAdm: NumberInt(1) },
  { _id: NumberInt(5), tombo: NumberInt(5), nome: "Quadro Branco", status: "não disponível", dataHoraAtualizacaoStatus: ISODate(), codAdm: NumberInt(2) },
  { _id: NumberInt(6), tombo: NumberInt(6), nome: "Notebook", status: "disponível", dataHoraAtualizacaoStatus: ISODate(), codAdm: NumberInt(1) }
]);

// ======================================
// Coleção: reservas
// Corresponde às tabelas ReservaAuditorio e EquipamentoReservado (incorporado)
// O siape é uma referência ao Servidor
// Os equipamentos são incorporados para fácil acesso
// ======================================
db.reservas.insertMany([
  {
    _id: NumberInt(1),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-05T00:00:00Z'),
    status: "reservado",
    horaInicial: "10:00",
    horaFinal: "12:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(1),
    equipamentosReservados: [
      { tombo: NumberInt(1), nome: "Data Show" }, // Adicionei o nome para facilitar
      { tombo: NumberInt(2), nome: "Lousa Digital" },
      { tombo: NumberInt(3), nome: "Microfone" }
    ]
  },
  {
    _id: NumberInt(2),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-05T00:00:00Z'),
    status: "reservado",
    horaInicial: "14:00",
    horaFinal: "18:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(1),
    equipamentosReservados: [
      { tombo: NumberInt(1), nome: "Data Show" },
      { tombo: NumberInt(3), nome: "Microfone" }
    ]
  },
  {
    _id: NumberInt(3),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-06T00:00:00Z'),
    status: "reservado",
    horaInicial: "08:00",
    horaFinal: "12:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(1),
    equipamentosReservados: [
      { tombo: NumberInt(1), nome: "Data Show" },
      { tombo: NumberInt(2), nome: "Lousa Digital" },
      { tombo: NumberInt(3), nome: "Microfone" }
    ]
  },
  {
    _id: NumberInt(4),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-06T00:00:00Z'),
    status: "reservado",
    horaInicial: "14:00",
    horaFinal: "18:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(2),
    equipamentosReservados: [
      { tombo: NumberInt(1), nome: "Data Show" },
      { tombo: NumberInt(2), nome: "Lousa Digital" },
      { tombo: NumberInt(3), nome: "Microfone" }
    ]
  },
  {
    _id: NumberInt(5),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-07T00:00:00Z'),
    status: "reservado",
    horaInicial: "08:00",
    horaFinal: "18:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(2),
    equipamentosReservados: [] // Nenhum equipamento reservado para esta reserva no SQL original
  },
  {
    _id: NumberInt(6),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-10T00:00:00Z'),
    status: "solicitado",
    horaInicial: "08:00",
    horaFinal: "11:00",
    dataHoraSolicitacao: ISODate(),
    siape: null, // siape é NULL no SQL original
    equipamentosReservados: []
  },
  {
    _id: NumberInt(7),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-09T00:00:00Z'),
    status: "reservado",
    horaInicial: "08:00",
    horaFinal: "10:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(4),
    equipamentosReservados: [
      { tombo: NumberInt(1), nome: "Data Show" }
    ]
  },
  {
    _id: NumberInt(8),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-12T00:00:00Z'),
    status: "reservado",
    horaInicial: "08:00",
    horaFinal: "10:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(4),
    equipamentosReservados: [
      { tombo: NumberInt(2), nome: "Lousa Digital" }
    ]
  },
  {
    _id: NumberInt(9),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-13T00:00:00Z'),
    status: "reservado",
    horaInicial: "08:00",
    horaFinal: "10:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(4),
    equipamentosReservados: []
  },
  {
    _id: NumberInt(10),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-14T00:00:00Z'),
    status: "reservado",
    horaInicial: "08:00",
    horaFinal: "10:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(4),
    equipamentosReservados: []
  },
  {
    _id: NumberInt(11),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-15T00:00:00Z'),
    status: "reservado",
    horaInicial: "08:00",
    horaFinal: "10:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(4),
    equipamentosReservados: []
  },
  {
    _id: NumberInt(12),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-19T00:00:00Z'),
    status: "reservado",
    horaInicial: "14:00",
    horaFinal: "18:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(5),
    equipamentosReservados: [
      { tombo: NumberInt(1), nome: "Data Show" }
    ]
  },
  {
    _id: NumberInt(13),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-20T00:00:00Z'),
    status: "reservado",
    horaInicial: "14:00",
    horaFinal: "18:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(5),
    equipamentosReservados: [
      { tombo: NumberInt(2), nome: "Lousa Digital" }
    ]
  },
  {
    _id: NumberInt(14),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-21T00:00:00Z'),
    status: "reservado",
    horaInicial: "14:00",
    horaFinal: "18:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(5),
    equipamentosReservados: [
      { tombo: NumberInt(3), nome: "Microfone" }
    ]
  },
  {
    _id: NumberInt(15),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-22T00:00:00Z'),
    status: "reservado",
    horaInicial: "14:00",
    horaFinal: "18:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(5),
    equipamentosReservados: []
  },
  {
    _id: NumberInt(16),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-22T00:00:00Z'),
    status: "reservado",
    horaInicial: "14:00",
    horaFinal: "18:00",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(5),
    equipamentosReservados: []
  },
  {
    _id: NumberInt(17),
    motivo: "Reserva Pessoal",
    data: ISODate('2019-10-23T00:00:00Z'),
    status: "reservado",
    horaInicial: "13:30",
    horaFinal: "15:30",
    dataHoraSolicitacao: ISODate(),
    siape: NumberInt(1),
    equipamentosReservados: [
      { tombo: NumberInt(6), nome: "Notebook" }
    ]
  }
]);

// Exemplo de como você faria uma consulta para ver os dados de um servidor com seus telefones
// db.servidores.find({ _id: NumberInt(1) })

// Exemplo de como você faria uma consulta para ver os dados de uma reserva com seus equipamentos
// db.reservas.find({ _id: NumberInt(1) })
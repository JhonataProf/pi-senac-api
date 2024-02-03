import { Optional } from "sequelize";
import { Model } from "sequelize-typescript";

type PacienteAttributes = {
  id: Number
  nome: string
  cpf: string
  email: string
  telefone: string
  data_nascimento: Date
  genero: string
  endereco: string
}

type PacienteCreationAttributes = Optional<PacienteAttributes, 'id'>

export class Paciente extends Model<PacienteAttributes, PacienteCreationAttributes> {

  declare id: Number
  declare nome: string
  declare cpf: string
  declare email: string
  declare telefone: string
  declare data_nascimento: Date
  declare genero: string
  declare endereco: string
}
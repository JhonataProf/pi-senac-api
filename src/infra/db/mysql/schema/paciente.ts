import { EntitySchema } from 'typeorm'

export interface Paciente {
  id: number
  nome: string
  cpf: string
  email: string
  telefone: string
  dataNascimento: Date
  genero: string
  endereco: string
}

export const PacienteSchema = new EntitySchema<Paciente>({
  name: 'paciente',
  columns: {
    id: {
      type: Number,
      primary: true,
      generated: true
    },
    nome: {
      type: String,
      length: 100,
      nullable: false
    },
    cpf: {
      type: String,
      length: 11,
      nullable: false
    },
    email: {
      type: String,
      length: 100,
      nullable: false
    },
    dataNascimento: {
      type: 'date',
      nullable: false
    },
    genero: {
      type: String,
      length: 100,
      nullable: false
    },
    endereco: {
      type: 'text',
      nullable: false
    }
  }
})

// @Entity()
// export class Paciente {
//   @PrimaryGeneratedColumn()
//     id: number

//   @Column({})
//     name: string

//   @Column()
//     cpf: string

//   @Column()
//     email: string

//   @Column()
//     telefone: string

//   @Column()
//     dataNascimento: Date

//   @Column()
//     genero: string

//   @Column()
//     endereco: string
// }

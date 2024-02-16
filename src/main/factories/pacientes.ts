import { PacienteController } from "../../presentation/controllers/paciente/paciente"

export const makePacienteController = (): PacienteController => {
  return new PacienteController()
}
import { Router } from 'express'
import { adaptRoute } from '../adapters/express-route-adapter'
import { makePacienteController } from '../factories/controllers/paciente/pacientes'

export default (router: Router): void => {
  router.post('/paciente', adaptRoute(makePacienteController()))
}

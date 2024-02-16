import { Router } from 'express'
import { adaptRoute } from '../adapters/express-route-adapter'
import { makePacienteController } from '../factories/pacientes'

export default (router: Router): void => {
  router.get('/pacientes', adaptRoute(makePacienteController()))
}

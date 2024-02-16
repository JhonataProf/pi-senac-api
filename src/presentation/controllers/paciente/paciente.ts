import { ok, serverError } from '../../helpers/http-helper'
import { Controller, HttpRequest, HttpResponse } from '../../protocols'

export class PacienteController implements Controller {
  async handle (httpRequest: HttpRequest): Promise<HttpResponse> {
    try {
      return new Promise((resolve) => {
        resolve(ok({ message: 'sucesso' }))
      })
      // return ok({ message: 'Olá' })
    } catch (error) {
      return new Promise((resolve) => {
        resolve(serverError())
      })
    }
  }
}

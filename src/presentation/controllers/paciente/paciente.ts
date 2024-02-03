import { Paciente } from "../../../domain/models/paciente";
import { ok, serverError } from "../../helpers/http-helper";
import { Controller, HttpRequest, HttpResponse } from "../../protocols";

export class PacienteController implements Controller {
  async handle (httpRequest: HttpRequest): Promise<HttpResponse> {
    try {
      const paciente = new Paciente()
      paciente.nome = 'Carlos'
      return new Promise(resolve => {
        resolve(ok({ message: paciente.nome }))
      })
      // return ok({ message: 'Olá' })
    } catch (error) {
      return new Promise(resolve => {
        resolve(serverError())
      })
    }
  }

}
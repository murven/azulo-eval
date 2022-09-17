import { Api } from "./airport";

export class HttpService implements Api {
  async get(path: string) {
    const response = await fetch(path);
    return response.json();
  }
}

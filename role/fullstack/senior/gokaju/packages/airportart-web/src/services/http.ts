import { Api } from "./airports";
import { API_URL } from "../constants";

export class HttpService implements Api {
  async get(path: string) {
    const response = await fetch(`${API_URL}${path}`);
    return response.json();
  }
}

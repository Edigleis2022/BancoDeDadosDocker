import axios from "axios";

const backend_host = process.env.REACT_APP_BACKEND_HOST || 'http://localhost:8080';

export default axios.create({
  baseURL: `${backend_host}/api`,
  headers: {
    "Content-type": "application/json"
  }
});

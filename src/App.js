import React from "react";
import User from "./components/user";

export default function App() {
  const [data, setdata] = React.useState([]);
  React.useEffect(() => {
    fetch("https://jsonplaceholder.typicode.com/todos")
      .then((response) => response.json())
      .then((json) => setdata(json));
  }, [setdata]);
  return (
    <div>
      App
      <div>User</div>
      <User data={data} />
    </div>
  );
}

function fetch_loop(url, interval) {
  return setInterval(
    () =>
      fetch(url)
        .then((res) => res.json())
        .then((out) => {
          console.log("Output: ", out);
        })
        .catch((err) => console.error(err)),
    interval * 1000
  );
}

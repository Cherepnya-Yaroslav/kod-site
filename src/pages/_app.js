import YandexMetrikaContainer from "../components/YandexMetrikaContainer";

function MyApp({ Component, pageProps }) {
  return (
    <>
      <YandexMetrikaContainer />
      <Component {...pageProps} />
    </>
  );
}

export default MyApp; 
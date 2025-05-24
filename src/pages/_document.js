import { Html, Head, Main, NextScript } from 'next/document'

export default function Document() {
  return (
    <Html>
      <Head>
        {/* Здесь больше не нужен скрипт Яндекс.Метрики */}
      </Head>
      <body>
        <Main />
        <NextScript />
      </body>
    </Html>
  )
} 
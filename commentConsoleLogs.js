const fs = require('fs');
const path = require('path');

// Регулярные выражения для поиска консольных методов
// Улучшенное регулярное выражение, которое охватывает больше вариантов
const consoleMethodRegex = /(^\s*)(console\.(log|error|warn|info|debug)\s*\([\s\S]*?\)(\s*;)?\s*$)/gm;
// Регулярное выражение для catch(console.error)
const catchConsoleRegex = /(^\s*)(.+\.catch\(console\.error\).*$)/gm;

// Исключаемые директории
const excludeDirs = ['node_modules', '.git', 'build', 'dist', '.next', '.cache'];
// Расширения файлов для обработки
const includeExtensions = ['.js', '.jsx', '.ts', '.tsx'];

// Функция для рекурсивного обхода директорий
function processDirectory(dir) {
  const files = fs.readdirSync(dir);
  
  for (const file of files) {
    const filePath = path.join(dir, file);
    const stats = fs.statSync(filePath);
    
    if (stats.isDirectory()) {
      if (!excludeDirs.includes(file)) {
        processDirectory(filePath);
      }
    } else if (stats.isFile() && includeExtensions.includes(path.extname(file))) {
      commentConsoleLogsInFile(filePath);
    }
  }
}

// Функция для комментирования console методов в файле
function commentConsoleLogsInFile(filePath) {
  try {
    let fileContent = fs.readFileSync(filePath, 'utf8');
    let originalContent = fileContent;
    
    // Заменяем консольные методы, добавляя комментарий
    fileContent = fileContent.replace(consoleMethodRegex, '$1// $2');
    
    // // Заменяем .catch(console.error) на // .catch(console.error)
    fileContent = fileContent.replace(catchConsoleRegex, '$1// $2');
    
    // Записываем изменения только если файл был изменен
    if (fileContent !== originalContent) {
      fs.writeFileSync(filePath, fileContent, 'utf8');
      // console.log(`Commented console methods in: ${filePath}`);
    }
  } catch (error) {
    // console.error(`Error processing file ${filePath}:`, error.message);
  }
}

// Запуск скрипта
const rootDir = process.argv[2] || '.';
// console.log(`Starting to comment console methods in directory: ${rootDir}`);
processDirectory(rootDir);
// console.log('Finished commenting console methods'); 
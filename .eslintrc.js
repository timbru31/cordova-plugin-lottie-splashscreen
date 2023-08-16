module.exports = {
    extends: ['eslint:recommended', 'plugin:@typescript-eslint/recommended-type-checked'],
    parser: '@typescript-eslint/parser',
    plugins: ['@typescript-eslint', 'prettier'],
    root: true,
    rules: {
        'prettier/prettier': 'error',
    },
    parserOptions: {
        project: 'tsconfig.json'
    }
};

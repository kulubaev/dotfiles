let g:projectionist_heuristics = {
    \ '*': {
    \       '*.js': {
    \         'alternate':[
    \           '{dirname}/{basename}.test.js',
    \           '{dirname}/{__tests__/basename}.js',
    \           '{dirname}/{__specs__/basename}.js',
    \           '{dirname}/{__tests__/basename}-test.js',
    \           '{dirname}/{__specs__/basename}-spec.js',
    \          ],
    \         'type': 'source',
    \       },
    \       '*.test.js': {
    \         'alternate': '{basename}.js',
    \         'type': 'test',
    \       },
    \       '**/__tests__/*.js': {
    \         'alternate': '{dirname}/{basename}.js',
    \         'type': 'test',
    \       },
    \      '**/__specs__/*.js': {
    \         'alternate': '{dirname}/{basename}.js',
    \         'type': 'test',
    \       },
    \       '**/__tests__/*-test.js': {
    \         'alternate': '{dirname}/{basename}.js',
    \         'type': 'test',
    \       },
    \       '**/__specs__/*-specs.js': {
    \         'alternate': '{dirname}/{basename}.js',
    \         'type': 'test',
    \       },
    \ }
    \}

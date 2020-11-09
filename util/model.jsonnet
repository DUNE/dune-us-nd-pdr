// This file glues the data provided directly by a xlsx file to what
// is required by a template file.

local wash = import "wash_xlsx.jsonnet";

function(code, specs) {
    code: code, specs: [wash.row(r) for r in specs]
}
    

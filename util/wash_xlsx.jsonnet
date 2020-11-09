// Utilities to augment data loaded from xlsx files

{
    // Map XLSX header labels to better names.  If an entry is not
    // found, it impiles to add a new key name that is the original
    // but lower case and with spaces replaced by underscore.
    colmap : {
        "Legacy ID":            "lid",
        "Artifact Type":        "artificat",
	"LaTeX Label":          "label",
	"Primary Text (LaTeX)": "primary",
	"Value":                "value_text",
	"Value (LaTeX)":        "value",
	"Rationale":            "rationale_text",
	"Rationale (LaTeX)":    "rationale",
	"Link:Child Of (>)":    "child_link",
	"Legacy Parent ID":     "lpid",
	"Link:Parent Of (<)":   "parent_link",
    },

    // lower case and replace bad chars
    clean :: function(s) if std.objectHas(self.colmap, s) then self.colmap[s] else
        std.asciiLower(
            std.strReplace(
                std.strReplace(
                    std.strReplace(
                        std.strReplace(
                            std.strReplace(s, ' ', '_'),
                            '<', ''),
                        '>',''),
                    '(', ''),
                ')', '')),

    row :: function(o) std.prune(o {
        [self.clean(k)]:o[k] for k in std.objectFields(o)
    }),

}

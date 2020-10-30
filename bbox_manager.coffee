samples = [{"x1":153,"y1":126,"x2":217,"y2":204,"label":"object","guid":null,"id":"_0l3txu0mj","data":{}},{"x1":317,"y1":183,"x2":364,"y2":289,"label":"object","guid":null,"id":"_ed010wq1j","data":{}}]

class AnnotatorManager
	constructor: (annotator) ->
		@annotator = annotator
		for entry in samples
			bb_entry = new BBoxEntry(entry.x1, entry.y1, entry.x2, entry.y2, entry.label)
			bb_entry.set_data(entry.data)
			@annotator.add_entry(bb_entry)

		@annotator.onchange @annotator.entries

window.AnnotatorManager = AnnotatorManager
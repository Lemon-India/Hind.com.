import basic

while True:
	text = input('xms > ')
	if text.strip() == "": continue
	result, error = basic.run('<error>', text)

	if error:
		print(error.as_string())
	elif result:
		if len(result.elements) == 1:
			print(repr(result.elements[0]))
		else:
			print(repr(result))



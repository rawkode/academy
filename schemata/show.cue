{
	_schema: {
		name:      "Show"
		namespace: "rawkode.academy"
	}

	#Show: {
		_dataset: {
			plural: "shows"
			supportedExtensions: ["md"]
		}

    title: string
    body?: string
    host_id: string
    hashtag?: string
	}
}

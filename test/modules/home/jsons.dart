const Map<String, dynamic> USER_JSON = {
  "id": "023a260e-e1f6-419f-822e-7f38324f3228",
  "fullName": "Raisa Spagnol",
  "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg",
  "email": "raisaspagnol6@gmail.com",
  "ranking": {
    "points": 325,
    "position": 3
  },
  "teams": [
    {
      "id": "53d8bf0b-6949-468f-b470-55fd55341662",
      "name": "Valuu",
      "organizationId": "6fe113ad-951d-48f9-9179-928dfa41b8ee",
      "organizationName": "EVOA",
      "image": ""
    },
    {
      "id": "aa0a4afa-b93b-4d31-bad5-9ca85f8e7e15",
      "name": "Desenvolvimento",
      "organizationId": "a70b8695-db6e-4539-972a-4c8cecc60b63",
      "organizationName": "Valuu",
      "image": ""
    }
  ],
  "acessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6InJhaXNhc3BhZ25vbDZAZ21haWwuY29tIiwiRnVsbE5hbWUiOiJSYWlzYSBTcGFnbm9sIiwibmFtZWlkIjoiMDIzYTI2MGUtZTFmNi00MTlmLTgyMmUtN2YzODMyNGYzMjI4IiwiZW1haWwiOiJyYWlzYXNwYWdub2w2QGdtYWlsLmNvbSIsIm5iZiI6MTU5MTU0OTM1NCwiZXhwIjoxNTkyODQ1MzU0LCJpYXQiOjE1OTE1NDkzNTR9.4oE9EdCcqncmzioVPyVb-KDscfNsQC-hNmp62wBibzE",
  "refreshToken": "9bVvGWr4ZLpf31xIqWwClt0pB1YKHF2RzcETHHgA",
  "expiration": "2020-06-22T17:02:34.9198522+00:00"
};

const String ACESS_TOKEN = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1bmlxdWVfbmFtZSI6InJhaXNhc3BhZ25vbDZAZ21haWwuY29tIiwiRnVsbE5hbWUiOiJSYWlzYSBTcGFnbm9sIiwibmFtZWlkIjoiMDIzYTI2MGUtZTFmNi00MTlmLTgyMmUtN2YzODMyNGYzMjI4IiwiZW1haWwiOiJyYWlzYXNwYWdub2w2QGdtYWlsLmNvbSIsIm5iZiI6MTU5MTU0OTM1NCwiZXhwIjoxNTkyODQ1MzU0LCJpYXQiOjE1OTE1NDkzNTR9.4oE9EdCcqncmzioVPyVb-KDscfNsQC-hNmp62wBibzE";

const String ORGANIZATION_ID = "6fe113ad-951d-48f9-9179-928dfa41b8ee";

const Map<String, dynamic> FEED_JSON = {
  "pageIndex": 1,
  "totalPages": 2,
  "items": [
    {
      "id": "2d9828cc-97d7-483b-b0e2-b9cd57e57181",
      "comment": "teste",
      "activity": {
        "id": "34455218-8b45-4f95-ad32-831bc2ea88e8",
        "description": "Fazer musculação"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "41e87f39-b73c-47e3-a304-72aebdbebcb0",
      "comment": "teste",
      "image": "https://s3.us-east-2.amazonaws.com/alcance.app/progress/88adfbd3-5b94-4ff8-a2ea-8acba03daa49.jpeg",
      "activity": {
        "id": "ffb55077-6dbf-4af7-b513-18a921d0a6c3",
        "description": "Ir á academia"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "14e969fd-5fcc-40a1-9697-b09432b2d742",
      "comment": "uhul",
      "image": "https://s3.us-east-2.amazonaws.com/alcance.app/progress/e83673c9-0d73-4299-932d-6823d885eaa8.jpeg",
      "activity": {
        "id": "ffb55077-6dbf-4af7-b513-18a921d0a6c3",
        "description": "Ir á academia"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "70aacde5-4af6-492f-a4e8-ccf3a0db7188",
      "comment": "brtbtr",
      "activity": {
        "id": "7c561ba0-1438-40fa-9b87-ba71dfb0da76",
        "description": "Fazer caminhada"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "dba33d84-930f-4751-bd38-65a33e482a34",
      "comment": "teste",
      "activity": {
        "id": "34455218-8b45-4f95-ad32-831bc2ea88e8",
        "description": "Fazer musculação"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "3febf594-e8f2-4ffc-bd07-2329a3af350a",
      "comment": "teste",
      "image": "https://s3.us-east-2.amazonaws.com/alcance.app/progress/4fc5e6c8-014b-4051-9035-462ab6b2bfda.jpeg",
      "activity": {
        "id": "ffb55077-6dbf-4af7-b513-18a921d0a6c3",
        "description": "Ir á academia"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "6cce8a54-abd9-446e-aaf2-46795a4ecf8d",
      "comment": "teste",
      "image": "https://s3.us-east-2.amazonaws.com/alcance.app/progress/550eb2e3-c7a9-4938-bb43-df4f8882d0a2.jpeg",
      "activity": {
        "id": "ffb55077-6dbf-4af7-b513-18a921d0a6c3",
        "description": "Ir á academia"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "70bf582e-de22-4557-8553-c17c170e9a24",
      "comment": "teste",
      "image": "https://s3.us-east-2.amazonaws.com/alcance.app/progress/4aadbc79-5cb5-4a32-aa90-e5fb379fa419.jpeg",
      "activity": {
        "id": "ffb55077-6dbf-4af7-b513-18a921d0a6c3",
        "description": "Ir á academia"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "b94f099d-977d-4a4e-b4e9-f78cea623786",
      "comment": "teste",
      "image": "https://s3.us-east-2.amazonaws.com/alcance.app/progress/f6be88ee-e264-4463-a5cf-68c64778096e.jpeg",
      "activity": {
        "id": "ffb55077-6dbf-4af7-b513-18a921d0a6c3",
        "description": "Ir á academia"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    },
    {
      "id": "f4e81d2d-bc1b-4bc6-b007-f6249acd1a97",
      "comment": "teste",
      "activity": {
        "id": "ffb55077-6dbf-4af7-b513-18a921d0a6c3",
        "description": "Ir á academia"
      },
      "user": {
        "id": "023a260e-e1f6-419f-822e-7f38324f3228",
        "fullName": "Raisa Spagnol",
        "photo": "https://s3.us-east-2.amazonaws.com/alcance.app/user/c0d0b49c-44eb-4029-b015-210ebe2a0c95.jpeg"
      },
      "isTheUser": true,
      "userLiked": false
    }
  ]
};
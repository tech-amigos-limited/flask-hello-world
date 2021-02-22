@Library('jenkins-shared-library@feature/techamigos') _

thePipeline(
    folder: [
        _defaults: 'base',
        project: 'flask-hello-world-sample',
        // add the python dependencies
        services: [
            [
                name: 'main',
                command: ['cat'],
                tty: true,
                image: 'python:3.7.8-stretch'
            ]
        ],
        // define the steps specific to this project
        stages : [
            prepare: [
                steps: [
                    'pip3 install -r requirements.txt'
                        ]
                      ],
            test: [
                steps: [
                    'pytest -vs tests.py'
                        ]
                   ],
            build: [
                steps: [
                'echo "No build required"',
                'echo "DOCKER_REPO:$DOCKER_REPO"',
                'echo "PROJECT_NAME:$PROJECT_NAME"',
                'echo "Reached end of Jenkinsfile"'


                        ]

                    ]
           ]
    ]
)
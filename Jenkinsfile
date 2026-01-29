pipeline
{
  agent any
  stages
  {
    // stage('Clone Git')
    // {
    //   steps {
    //     git 'https://github.com/adithi2000/helloWorldJenkins.git'
    //       }
    // }
    stage('Build'){
      steps {
        bat 'python prog1.py'
      }
    }
    stage('Test'){
      steps {
      bat 'python puunitTest.py'
    }
    }
  }
}
    
    

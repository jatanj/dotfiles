interp.repositories() ++= Seq(
  coursier.MavenRepository(
      s"file://${java.lang.System.getProperties.get("user.home")}/.m2/repository/"))


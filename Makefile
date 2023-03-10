# cs3534_HOME="$(HOME)/3524"
cs3534_HOME="."

RM_FLAGS="-f"

rmishout:
	javac examples/rmishout/ShoutServerImpl.java; \
	javac examples/rmishout/ShoutServerMainline.java; \
	javac examples/rmishout/ShoutClient.java

rmishoutclean:
	cd examples/rmishout; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

###########################################################
## The Shout example and solution
##
## Felipe Meneguzzi
## 2021/01/26
###########################################################

shouttask:
	javac cs3534/examples/tasks/TaskInterface.java; \
	javac cs3534/examples/tasks/ExecutionServiceInterface.java \
	javac cs3534/examples/tasks/ShoutTask.java; \
	javac cs3534/examples/tasks/Client.java; \
	javac cs3534/examples/tasks/ExecutionService.java; \
	javac cs3534/examples/tasks/RepeatLinesClient.java; \
	javac cs3534/examples/tasks/ServerMainline.java

shouttaskclean:
	cd cs3534/examples/tasks; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

###########################################################
## The Scissors, Paper, Stone example and solution
##
## Zsolt Kebel
## 2023/06/02
###########################################################

socketsps:
	javac examples/socketsps/SPSServer.java; \
	javac examples/socketsps/SPSClient.java;

socketspsclean:
	cd examples/socketsps; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

###########################################################
## The Auction example using Callbacks
##
## Zsolt Kebel
## 2023/06/02
###########################################################

auction:
	javac examples/auction/*.java;

auctionclean:
	cd examples/auction; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

###########################################################
## The Scissors, Paper, Stone example and solution
##
## Tim Norman
## 2004/09/10
## Revised for java 1.5 2008/01/28
###########################################################

sps:
	javac cs3534/examples/sps/SPSServerImpl.java; \
	javac cs3534/examples/sps/SPSServerMainline.java; \
	javac cs3534/examples/sps/SPSClient.java

spsclean:
	cd cs3534/examples/sps; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

spstar:	spsclean
	rm $(RM_FLAGS) sps.tgz; \
	tar cvf - cs3534/examples/sps sps.policy | gzip > sps.tgz

tpg:
	javac cs3534/solutions/tpg/TPGServerImpl.java; \
	javac cs3534/solutions/tpg/TPGServerMainline.java; \
	javac cs3534/solutions/tpg/TPGClient.java

tpgclean:
	cd cs3534/solutions/tpg; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

tpgtar:	tpgclean
	rm $(RM_FLAGS) tpg.tgz; \
	tar cvf - cs3534/solutions/tpg tpg.policy | gzip > tpg.tgz

###########################################################
## The IRC example and solution
##
## Tim Norman
## 2004/11/24
## Revised for java 1.5 2008/01/28
###########################################################

irc:
	javac cs3534/examples/irc/*.java

ircclean:
	cd cs3534/examples/irc; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

irctar:	ircclean
	rm $(RM_FLAGS) irc.tgz; \
	tar cvf - cs3534/examples/irc | gzip > irc.tgz

ircsoln:
	javac cs3534/solutions/irc/ReqTokenizer.java; \
	javac cs3534/solutions/irc/ChatServer.java; \

ircsolnclean:
	cd cs3534/solutions/irc; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

ircsolntar:	ircsolnclean
	rm $(RM_FLAGS) ircsoln.tgz; \
	tar cvf - cs3534/solutions/irc | gzip > ircsoln.tgz

###########################################################
## The College example and solution
##
## Tim Norman
## 2004/11/24
## Revised for java 1.5 2008/01/28
###########################################################

college:
	javac cs3534/examples/college/CollegeDatabaseInitialiser.java; \
	javac cs3534/examples/college/QueryTool.java

collegeclean:
	cd cs3534/examples/college; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

collegetar:	collegeclean
	rm $(RM_FLAGS) college.tgz; \
	tar cvf - cs3534/examples/college | gzip > college.tgz

collegesoln:
	javac cs3534/solutions/college/CollegeDatabaseInitialiser.java; \
	javac cs3534/solutions/college/QueryTool.java

collegesolnclean:
	cd cs3534/solutions/college; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

collegesolntar:	collegesolnclean
	rm $(RM_FLAGS) collegesoln.tgz; \
	tar cvf - cs3534/solutions/college | gzip > collegesoln.tgz

###########################################################
## The Distributed College example and solution
##
## Tim Norman
## 2004/11/24
## Revised for java 1.5 2008/01/28
## Simplified 2009/02/10
###########################################################

distcollege:
	javac cs3534/examples/distcollege/CollegeDatabaseInitialiser.java; \
	javac cs3534/examples/distcollege/CollegeImpl.java; \
	javac cs3534/examples/distcollege/CollegeMainline.java; \
	javac cs3534/examples/distcollege/QueryTool.java

distcollegeclean:
	cd cs3534/examples/distcollege; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

distcollegetar:	distcollegeclean
	rm $(RM_FLAGS) distcollege.tgz; \
	tar cvf - cs3534/examples/distcollege | gzip > distcollege.tgz

distcollegesoln:
	javac cs3534/solutions/distcollege/CollegeDatabaseInitialiser.java; \
	javac cs3534/solutions/distcollege/CollegeImpl.java; \
	javac cs3534/solutions/distcollege/CollegeMainline.java; \
	javac cs3534/solutions/distcollege/QueryTool.java

distcollegesolnclean:
	cd cs3534/solutions/distcollege; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

distcollegesolntar:	distcollegesolnclean
	rm $(RM_FLAGS) distcollegesoln.tgz; \
	tar cvf - cs3534/solutions/distcollege | gzip > distcollegesoln.tgz

###########################################################
## The Factory example and solution
##
## Tim Norman
## 2004/11/24
## Revised for java 1.5 2008/01/28
###########################################################

factory:
	javac cs3534/examples/factory/ConnectionImpl.java; \
	javac cs3534/examples/factory/ConnectionFactoryImpl.java; \
	javac cs3534/examples/factory/FactoryMainline.java; \
	javac cs3534/examples/factory/ClientSimulator.java

factoryclean:
	cd cs3534/examples/factory; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

factorytar:	factoryclean
	rm $(RM_FLAGS) factory.tgz; \
	tar cvf - cs3534/examples/factory factory.policy | gzip > factory.tgz

factorysoln:
	javac cs3534/solutions/factory/IDManager.java; \
	javac cs3534/solutions/factory/ConnectionImpl.java; \
	javac cs3534/solutions/factory/ConnectionFactoryImpl.java; \
	javac cs3534/solutions/factory/FactoryMainline.java; \
	javac cs3534/solutions/factory/ClientSimulator.java

factorysolnclean:
	cd cs3534/solutions/factory; \
	rm $(RM_FLAGS) *.class *~; \
	cd $(cs3534_HOME)

factorysolntar:	factorysolnclean
	rm $(RM_FLAGS) factory.tgz; \
	tar cvf - cs3534/solutions/factory factory.policy | gzip > factorysoln.tgz

###########################################################
## Javadoc
##
## Only for the examples; not the solutions.
###########################################################

javadoc:
	javadoc -d docs cs3534.examples.sps \
			cs3534.examples.irc \
			cs3534.examples.college \
			cs3534.examples.distcollege \
			cs3534.examples.factory

###########################################################
## cleanall
###########################################################

cleanall:	spsclean ircclean collegeclean distcollegeclean factoryclean tpgclean ircsolnclean collegesolnclean distcollegesolnclean factorysolnclean

###########################################################
## tarall
###########################################################

tarall:	rmishouttar spstar collegetar rmishoutsolntar spssolntar collegesolntar

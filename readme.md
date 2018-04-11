Running Instructions
Make sure you have docker installed and is accessible to containers. 

From project root:
Build with: docker build -t svr:latest .
Run with: 
ocker run svr:latest

To run script without container
Make sure ruby, rubygems and bundler are installed. 

From project root:
cd svr && bundle install && ./make_report

# Use the official Microsoft IIS image for Windows
FROM mcr.microsoft.com/dotnet/framework/aspnet:4.7.1-windowsservercore-ltsc2019

# Set working directory
WORKDIR /inetpub/wwwroot

# Copy published files from your local build
COPY ../ .

# Expose port 80
EXPOSE 80
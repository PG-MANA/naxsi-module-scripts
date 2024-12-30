#
#

Name:           nginx-module-naxsi
Version:        1.7
Release:        0
Summary:        The Web Application Firewall for Nginx
License:        GPL-3.0
Group:          Productivity/Networking/Web/Proxy
URL:            https://github.com/wargio/naxsi
Source:         %name-%version.tar.xz
BuildRequires:  nginx-source
BuildRequires:  pcre2-devel-static
%ngx_conditionals
%ngx_requires

%description
The Web Application Firewall for Nginx.
NAXSI is an open-source, high performance, low rules maintenance WAF for NGINX

%prep
%autosetup -p1
cp -r /usr/src/nginx .

%build
cd nginx
%ngx_configure --add-dynamic-module=../naxsi_src/
%make_build modules

%install
mkdir -p %buildroot/%ngx_module_dir
install -D -m 0644 nginx/objs/ngx_http_naxsi_module.so %buildroot/%ngx_module_dir

%files
%license LICENSE
%ngx_module_dir/*.so

%changelog

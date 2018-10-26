Blog article related to this repository: http://blog.michaelperrin.fr/2018/10/26/automate-wordpress-part-1/

Init project:

    docker-compose build
    docker-compose up -d

Install Wordpress:

    make wordpress_install

Configure Wordpress:

    make wordpress_configure

That's it! Wordpress was **installed** and **configured** without any manual
clicks in some interface and is now ready to be visited at http://localhost .

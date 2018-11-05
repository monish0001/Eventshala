
initParticles = function() {
    var config;
    if ($('#particles').length && (typeof particlesJS !== "undefined" && particlesJS !== null)) {

        config = {
            "particles": {
                "number": {
                    "value": 40,
                    "density": {
                        "enable": true,
                        "value_area": 800
                    }
                },
                "color": {
                    "value": ["#0652fd","#48CA73","#f97794","#ffbf00","#a85ad4"]
                },
                "shape": {
                    "type": "circle",
                    "stroke": {
                        "width": 0,
                        "color": "#b6b2b2"
                    }
                },
                "opacity": {
                    "value": 0.5211089197812949,
                    "random": false,
                    "anim": {
                        "enable": true,
                        "speed": 0.5,
                        "opacity_min": 0.1,
                        "sync": false
                    }
                },
                "size": {
                    "value": 5.017060304327615,
                    "random": true,
                    "anim": {
                        "enable": true,
                        "speed": 10.181158184520175,
                        "size_min": 0.1,
                        "sync": true
                    }
                },
                "line_linked": {
                    "enable": false,
                    "distance": 150,
                    "color": "#c8c8c8",
                    "opacity": 0.4,
                    "width": 1
                },
                "move": {
                    "enable": true,
                    "speed": 1,
                    "direction": "none",
                    "random": false,
                    "straight": false,
                    "out_mode": "bounce",
                    "bounce": false,
                    "attract": {
                        "enable": false,
                        "rotateX": 600,
                        "rotateY": 1200
                    }
                }
            },
            "interactivity": {
                "detect_on": "canvas",
                "events": {
                    "onhover": {
                        "enable": false,
                        "mode": "repulse"
                    },
                    "onclick": {
                        "enable": false,
                        "mode": "push"
                    },
                    "resize": true
                },
                "modes": {
                    "grab": {
                        "distance": 400,
                        "line_linked": {
                            "opacity": 1
                        }
                    },
                    "bubble": {
                        "distance": 400,
                        "size": 40,
                        "duration": 2,
                        "opacity": 8,
                        "speed": 3
                    },
                    "repulse": {
                        "distance": 200,
                        "duration": 0.4
                    },
                    "push": {
                        "particles_nb": 4
                    },
                    "remove": {
                        "particles_nb": 2
                    }
                }
            },
            "retina_detect": true
        };
        particlesJS('particles', config);
    }
};
initParticles();


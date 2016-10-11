# manipulating yarr::piratepal 

# aim:
#   - retrieving transformable colour (red, green, blue) values for each colour across pirate palette 

# approach:
#   - generate colour codes for all pirate palettes
#   - save list of colour values with col2rgb function

# set transparency value = 0
trans = 0

# from yarr::piratepal 
piratepal.ls <- list(basel.pal = data.frame(blue1 = rgb(12, 
                                                        91, 176, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                            red = rgb(238, 0, 17, alpha = (1 - trans) * 255, 
                                                      maxColorValue = 255), green = rgb(21, 152, 61, 
                                                                                        alpha = (1 - trans) * 255, maxColorValue = 255), 
                                            pink = rgb(236, 87, 154, alpha = (1 - trans) * 255, 
                                                       maxColorValue = 255), orange = rgb(250, 107, 
                                                                                          9, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                            blue2 = rgb(20, 155, 237, alpha = (1 - trans) * 255, 
                                                        maxColorValue = 255), green2 = rgb(161, 199, 
                                                                                           32, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                            yellow = rgb(254, 193, 11, alpha = (1 - trans) * 
                                                           255, maxColorValue = 255), turquoise = rgb(22, 
                                                                                                      160, 140, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                            poop = rgb(154, 112, 62, alpha = (1 - trans) * 255, 
                                                       maxColorValue = 255), stringsAsFactors = F), 
                     pony.pal = data.frame(pink = rgb(235, 82, 145, alpha = (1 - 
                                                                               trans) * 255, maxColorValue = 255), orange = rgb(251, 
                                                                                                                                187, 104, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           lpink = rgb(245, 186, 207, alpha = (1 - trans) * 
                                                         255, maxColorValue = 255), lblue = rgb(157, 
                                                                                                218, 245, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           purple1 = rgb(99, 81, 160, alpha = (1 - trans) * 
                                                           255, maxColorValue = 255), gray = rgb(236, 
                                                                                                 241, 244, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           yellow = rgb(254, 247, 158, alpha = (1 - trans) * 
                                                          255, maxColorValue = 255), dblue = rgb(23, 
                                                                                                 148, 206, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           purple2 = rgb(151, 44, 141, alpha = (1 - trans) * 
                                                           255, maxColorValue = 255), stringsAsFactors = F), 
                     xmen.pal = data.frame(blue = rgb(2, 108, 203, alpha = (1 - 
                                                                              trans) * 255, maxColorValue = 255), red = rgb(245, 
                                                                                                                            30, 2, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           green = rgb(5, 177, 2, alpha = (1 - trans) * 
                                                         255, maxColorValue = 255), orange = rgb(251, 
                                                                                                 159, 83, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           gray = rgb(155, 155, 155, alpha = (1 - trans) * 
                                                        255, maxColorValue = 255), pink = rgb(251, 
                                                                                              130, 190, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           brown = rgb(186, 98, 34, alpha = (1 - trans) * 
                                                         255, maxColorValue = 255), yellow = rgb(238, 
                                                                                                 194, 41, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           stringsAsFactors = F), southpark.pal = data.frame(blue = rgb(47, 
                                                                                                        134, 255, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                             yellow = rgb(235, 171, 22, alpha = (1 - trans) * 
                                                                                                            255, maxColorValue = 255), red = rgb(222, 0, 
                                                                                                                                                 18, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                             green = rgb(34, 196, 8, alpha = (1 - trans) * 
                                                                                                           255, maxColorValue = 255), tan = rgb(254, 205, 
                                                                                                                                                170, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                             orange = rgb(241, 72, 9, alpha = (1 - trans) * 
                                                                                                            255, maxColorValue = 255), stringsAsFactors = F), 
                     google.pal = data.frame(blue = rgb(61, 121, 243, 
                                                        alpha = (1 - trans) * 255, maxColorValue = 255), 
                                             red = rgb(230, 53, 47, alpha = (1 - trans) * 
                                                         255, maxColorValue = 255), yellow = rgb(249, 
                                                                                                 185, 10, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                             green = rgb(52, 167, 75, alpha = (1 - trans) * 
                                                           255, maxColorValue = 255), stringsAsFactors = F), 
                     eternal.pal = data.frame(purple1 = rgb(23, 12, 46, 
                                                            alpha = (1 - trans) * 255, maxColorValue = 255), 
                                              red = rgb(117, 16, 41, alpha = (1 - trans) * 
                                                          255, maxColorValue = 255), purple2 = rgb(82, 
                                                                                                   25, 76, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                              purple3 = rgb(71, 59, 117, alpha = (1 - trans) * 
                                                              255, maxColorValue = 255), blue1 = rgb(77, 
                                                                                                     112, 156, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                              tan = rgb(111, 118, 107, alpha = (1 - trans) * 
                                                          255, maxColorValue = 255), blue2 = rgb(146, 
                                                                                                 173, 196, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                              stringsAsFactors = F), evildead.pal = data.frame(brown = rgb(25, 
                                                                                                           24, 13, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                               green = rgb(33, 37, 16, alpha = (1 - trans) * 
                                                                                                             255, maxColorValue = 255), red = rgb(46, 16, 
                                                                                                                                                  11, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                               brown2 = rgb(57, 46, 18, alpha = (1 - trans) * 
                                                                                                              255, maxColorValue = 255), brown3 = rgb(87, 
                                                                                                                                                      81, 43, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                               tan = rgb(150, 142, 76, alpha = (1 - trans) * 
                                                                                                           255, maxColorValue = 255), stringsAsFactors = F), 
                     usualsuspects.pal = data.frame(gray1 = rgb(50, 51, 
                                                                55, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                    gray2 = rgb(83, 76, 83, alpha = (1 - trans) * 
                                                                  255, maxColorValue = 255), blue = rgb(63, 81, 
                                                                                                        106, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                    brown = rgb(155, 102, 89, alpha = (1 - trans) * 
                                                                  255, maxColorValue = 255), red = rgb(232, 59, 
                                                                                                       65, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                    gray3 = rgb(159, 156, 162, alpha = (1 - trans) * 
                                                                  255, maxColorValue = 255), tan = rgb(234, 174, 
                                                                                                       157, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                    stringsAsFactors = F), ohbrother.pal = data.frame(brown1 = rgb(26, 
                                                                                                                   15, 10, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                      brown2 = rgb(61, 41, 26, alpha = (1 - trans) * 
                                                                                                                     255, maxColorValue = 255), brown3 = rgb(113, 
                                                                                                                                                             86, 57, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                      green = rgb(116, 125, 109, alpha = (1 - trans) * 
                                                                                                                    255, maxColorValue = 255), tan1 = rgb(173, 
                                                                                                                                                          157, 11, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                      blue = rgb(148, 196, 223, alpha = (1 - trans) * 
                                                                                                                   255, maxColorValue = 255), tan2 = rgb(230, 
                                                                                                                                                         221, 168, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                      stringsAsFactors = F), appletv.pal = data.frame(green = rgb(95, 
                                                                                                                                                                  178, 51, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                      gray = rgb(106, 127, 147, alpha = (1 - trans) * 
                                                                                                                                                                   255, maxColorValue = 255), orange = rgb(245, 
                                                                                                                                                                                                           114, 6, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                      red = rgb(235, 15, 19, alpha = (1 - trans) * 
                                                                                                                                                                  255, maxColorValue = 255), purple = rgb(143, 
                                                                                                                                                                                                          47, 139, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                      blue = rgb(19, 150, 219, alpha = (1 - trans) * 
                                                                                                                                                                   255, maxColorValue = 255), stringsAsFactors = F), 
                     brave.pal = data.frame(brown = rgb(168, 100, 59, 
                                                        alpha = (1 - trans) * 255, maxColorValue = 255), 
                                            yellow = rgb(182, 91, 35, alpha = (1 - trans) * 
                                                           255, maxColorValue = 255), red = rgb(148, 34, 
                                                                                                14, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                            green = rgb(39, 45, 23, alpha = (1 - trans) * 
                                                          255, maxColorValue = 255), blue = rgb(32, 33, 
                                                                                                38, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                            stringsAsFactors = F), bugs.pal = data.frame(green1 = rgb(102, 
                                                                                                      120, 64, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                         green2 = rgb(186, 214, 168, alpha = (1 - trans) * 
                                                                                                        255, maxColorValue = 255), blue = rgb(133, 
                                                                                                                                              199, 193, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                         brown1 = rgb(165, 154, 107, alpha = (1 - trans) * 
                                                                                                        255, maxColorValue = 255), brown2 = rgb(103, 
                                                                                                                                                85, 63, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                         stringsAsFactors = F), cars.pal = data.frame(peach = rgb(231, 
                                                                                                                                                  176, 143, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      purple = rgb(136, 76, 73, alpha = (1 - trans) * 
                                                                                                                                                     255, maxColorValue = 255), red = rgb(224, 54, 
                                                                                                                                                                                          58, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      brown = rgb(106, 29, 26, alpha = (1 - trans) * 
                                                                                                                                                    255, maxColorValue = 255), blue = rgb(157, 
                                                                                                                                                                                          218, 230, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      stringsAsFactors = F), nemo.pal = data.frame(yellow = rgb(251, 
                                                                                                                                                                                                207, 53, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                   orange = rgb(237, 76, 28, alpha = (1 - trans) * 
                                                                                                                                                                                                  255, maxColorValue = 255), brown = rgb(156, 
                                                                                                                                                                                                                                         126, 112, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                   blue1 = rgb(90, 194, 241, alpha = (1 - trans) * 
                                                                                                                                                                                                 255, maxColorValue = 255), green = rgb(17, 
                                                                                                                                                                                                                                        119, 108, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                   stringsAsFactors = F), rat.pal = data.frame(brown = rgb(159, 
                                                                                                                                                                                                                                           77, 35, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                               purple = rgb(146, 43, 73, alpha = (1 - trans) * 
                                                                                                                                                                                                                                              255, maxColorValue = 255), red = rgb(178, 29, 
                                                                                                                                                                                                                                                                                   19, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                               green = rgb(127, 134, 36, alpha = (1 - trans) * 
                                                                                                                                                                                                                                             255, maxColorValue = 255), yellow = rgb(241, 
                                                                                                                                                                                                                                                                                     156, 31, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                               stringsAsFactors = F), up.pal = data.frame(blue1 = rgb(95, 
                                                                                                                                                                                                                                                                                      140, 244, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                                                                          blue2 = rgb(220, 214, 252, alpha = (1 - trans) * 
                                                                                                                                                                                                                                                                                        255, maxColorValue = 255), orange = rgb(226, 
                                                                                                                                                                                                                                                                                                                                122, 72, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                                                                          brown = rgb(96, 86, 70, alpha = (1 - trans) * 
                                                                                                                                                                                                                                                                                        255, maxColorValue = 255), blue = rgb(67, 65, 
                                                                                                                                                                                                                                                                                                                              89, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                                                                          stringsAsFactors = F), espresso.pal = data.frame(purple = rgb(39, 
                                                                                                                                                                                                                                                                                                                                        27, 48, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                                                                                                                           blue = rgb(35, 102, 192, alpha = (1 - trans) * 
                                                                                                                                                                                                                                                                                                                                        255, maxColorValue = 255), yellow = rgb(233, 
                                                                                                                                                                                                                                                                                                                                                                                215, 56, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                                                                                                                           red = rgb(185, 18, 38, alpha = (1 - trans) * 
                                                                                                                                                                                                                                                                                                                                       255, maxColorValue = 255), green = rgb(163, 
                                                                                                                                                                                                                                                                                                                                                                              218, 75, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                                                                                                                                                                                                           orange = rgb(255, 100, 53, alpha = (1 - trans) * 
                                                                                                                                                                                                                                                                                                                                          255, maxColorValue = 255), stringsAsFactors = F), 
                     ipod.pal = data.frame(lightgray = rgb(215, 215, 215, 
                                                           alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           red = rgb(243, 174, 175, alpha = (1 - trans) * 
                                                       255, maxColorValue = 255), darkgray = rgb(174, 
                                                                                                 173, 176, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           green = rgb(158, 217, 191, alpha = (1 - trans) * 
                                                         255, maxColorValue = 255), blue = rgb(92, 203, 
                                                                                               235, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           yellow = rgb(222, 235, 97, alpha = (1 - trans) * 
                                                          255, maxColorValue = 255), background = rgb(242, 
                                                                                                      242, 242, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                           stringsAsFactors = F), info.pal = data.frame(red = rgb(231, 
                                                                                                  105, 93, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                        darkblue = rgb(107, 137, 147, alpha = (1 - trans) * 
                                                                                                         255, maxColorValue = 255), creme = rgb(246, 
                                                                                                                                                240, 212, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                        green = rgb(149, 206, 138, alpha = (1 - trans) * 
                                                                                                      255, maxColorValue = 255), gray1 = rgb(210, 
                                                                                                                                             210, 210, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                        lightblue = rgb(148, 212, 212, alpha = (1 - trans) * 
                                                                                                          255, maxColorValue = 255), gray2 = rgb(150, 
                                                                                                                                                 150, 150, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                        background = rgb(241, 243, 232, alpha = (1 - 
                                                                                                                                   trans) * 255, maxColorValue = 255), brown = rgb(136, 
                                                                                                                                                                                   119, 95, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                        stringsAsFactors = F), info2.pal = data.frame(darkblue = rgb(0, 
                                                                                                                                                     106, 64, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      pink = rgb(240, 136, 146, alpha = (1 - trans) * 
                                                                                                                                                   255, maxColorValue = 255), lightgreen = rgb(117, 
                                                                                                                                                                                               180, 30, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      lightgray = rgb(149, 130, 141, alpha = (1 - trans) * 
                                                                                                                                                        255, maxColorValue = 255), grayblue = rgb(112, 
                                                                                                                                                                                                  140, 152, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      lightblue = rgb(138, 184, 207, alpha = (1 - trans) * 
                                                                                                                                                        255, maxColorValue = 255), turquoise = rgb(0, 
                                                                                                                                                                                                   126, 127, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      green = rgb(53, 131, 89, alpha = (1 - trans) * 
                                                                                                                                                    255, maxColorValue = 255), paleblue = rgb(139, 
                                                                                                                                                                                              161, 188, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      purple = rgb(90, 88, 149, alpha = (1 - trans) * 
                                                                                                                                                     255, maxColorValue = 255), orange = rgb(242, 
                                                                                                                                                                                             153, 12, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      purple = rgb(90, 88, 149, alpha = (1 - trans) * 
                                                                                                                                                     255, maxColorValue = 255), paleorange = rgb(229, 
                                                                                                                                                                                                 186, 58, alpha = (1 - trans) * 255, maxColorValue = 255), 
                                                                                                                                      salmon = rgb(216, 108, 79, alpha = (1 - trans) * 
                                                                                                                                                     255, maxColorValue = 255), stringsAsFactors = F))

dput(piratepal.ls, file="piratepal_ls.old")

# manipulating yarr::piratepal - retrieving rgb values from piratepal_ls.old

piratepal.ls <- dget("piratepal_ls.old")
tmp<-lapply(piratepal.ls, col2rgb)
dput(tmp, file="piratepal_ls.txt")